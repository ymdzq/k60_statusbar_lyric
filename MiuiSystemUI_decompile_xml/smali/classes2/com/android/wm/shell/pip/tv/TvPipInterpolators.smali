.class public abstract Lcom/android/wm/shell/pip/tv/TvPipInterpolators;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final BROWSE:Landroid/view/animation/Interpolator;

.field public static final ENTER:Landroid/view/animation/Interpolator;

.field public static final EXIT:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    const v1, 0x3e4ccccd    # 0.2f

    .line 4
    const v2, 0x3dcccccd    # 0.1f

    .line 7
    const/4 v3, 0x0

    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 13
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 16
    const v1, 0x3e3851ec    # 0.18f

    .line 18
    const v2, 0x3e6147ae    # 0.22f

    .line 21
    invoke-direct {v0, v1, v4, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 24
    sput-object v0, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->BROWSE:Landroid/view/animation/Interpolator;

    .line 27
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 29
    const v1, 0x3df5c28f    # 0.12f

    .line 31
    const v2, 0x3ecccccd    # 0.4f

    .line 34
    invoke-direct {v0, v1, v4, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 37
    sput-object v0, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    .line 40
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 42
    invoke-direct {v0, v2, v4, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 44
    sput-object v0, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    .line 47
    return-void
    .line 49
.end method
