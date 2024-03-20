.class public final Lcom/android/keyguard/clock/DefaultClockController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field public final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field public final mResources:Landroid/content/res/Resources;

.field public mTextDate:Landroid/widget/TextView;

.field public mTextTime:Landroid/widget/TextView;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    .line 5
    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 10
    iput-object p1, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    .line 12
    iput-object p2, p0, Lcom/android/keyguard/clock/DefaultClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 14
    iput-object p3, p0, Lcom/android/keyguard/clock/DefaultClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public final getBigClockView()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/android/keyguard/clock/DefaultClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 7
    const v2, 0x7f0d008f    # @layout/default_clock_preview 'res/layout/default_clock_preview.xml'

    .line 9
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    .line 16
    const v1, 0x7f0a098a    # @id/time

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    .line 29
    const v1, 0x7f0a0286    # @id/date

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    .line 42
    return-object p0
    .line 44
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "default"

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPreferredY(I)I
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x2

    .line 2
    return p1
    .line 4
.end method

.method public final getPreview(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/clock/DefaultClockController;->getBigClockView()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/DefaultClockController;->setTextColor(I)V

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/clock/DefaultClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 10
    const/4 v2, 0x2

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    .line 17
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    .line 20
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const/4 v1, 0x0

    .line 28
    if-nez v0, :cond_0

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    new-instance v2, Ljava/util/concurrent/FutureTask;

    .line 32
    new-instance v3, Lcom/android/keyguard/clock/ViewPreviewer$1;

    .line 34
    invoke-direct {v3, p0, p1, p2, v0}, Lcom/android/keyguard/clock/ViewPreviewer$1;-><init>(Lcom/android/keyguard/clock/ViewPreviewer;IILandroid/view/View;)V

    .line 36
    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 42
    move-result-object p1

    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 46
    move-result-object p2

    .line 49
    if-ne p1, p2, :cond_1

    .line 50
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/clock/ViewPreviewer;->mMainHandler:Landroid/os/Handler;

    .line 56
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 64
    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    move-object v1, p0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception p0

    .line 69
    const-string p1, "ViewPreviewer"

    .line 70
    const-string p2, "Error completing task"

    .line 72
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :goto_1
    return-object v1
    .line 77
.end method

.method public final getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    .line 2
    const v0, 0x7f080c10    # @drawable/default_thumbnail 'res/drawable-xxxhdpi/default_thumbnail.png'

    .line 4
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    .line 2
    const v0, 0x7f1302be    # @string/clock_title_default 'Default'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    .line 7
    return-void
    .line 9
.end method

.method public final onTimeTick()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setColorPalette(Z[I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setDarkAmount(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    return-void
    .line 12
.end method

.method public final shouldShowStatusArea()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
