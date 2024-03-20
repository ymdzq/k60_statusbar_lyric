.class public Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneHandedSurfaceTransactionHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCornerRadius:F

.field private final mCornerRadiusAdjustment:F

.field private final mEnableCornerRadius:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x1050297    # @android:dimen/slice_icon_size

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    move-result v1

    .line 15
    iput v1, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadiusAdjustment:F

    .line 16
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->updateCornerRadius()V

    .line 20
    const p1, 0x7f050041    # @bool/config_one_handed_enable_round_corner 'true'

    .line 23
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 26
    move-result p1

    .line 29
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mEnableCornerRadius:Z

    .line 30
    return-void
.end method

.method public static getScreenRoundCornerRadiusTop(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 9
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    .line 19
    move-result v0

    .line 22
    if-lez v0, :cond_0

    .line 23
    return v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v0

    .line 29
    const-string v1, "dimen"

    .line 30
    const-string v2, "android"

    .line 32
    const-string v3, "rounded_corner_radius_top"

    .line 34
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    move-result v0

    .line 39
    if-lez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_1
    const/4 p0, -0x1

    .line 51
    return p0
    .line 52
.end method


# virtual methods
.method public crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result p3

    .line 9
    invoke-virtual {p1, p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 10
    return-object p0
    .line 13
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "OneHandedSurfaceTransactionHelperstates: "

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string v0, "  mEnableCornerRadius="

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mEnableCornerRadius:Z

    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 14
    const-string v0, "  mCornerRadiusAdjustment="

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadiusAdjustment:F

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 24
    const-string v0, "  mCornerRadius="

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadius:F

    .line 32
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(F)V

    .line 34
    return-void
    .line 37
.end method

.method public round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mEnableCornerRadius:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadius:F

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 8
    :cond_0
    return-object p0
    .line 11
.end method

.method public translate(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 3
    return-object p0
    .line 6
.end method

.method public updateCornerRadius()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->getScreenRoundCornerRadiusTop(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadiusAdjustment:F

    .line 9
    sub-float/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadius:F

    .line 12
    return-void
    .line 14
.end method
