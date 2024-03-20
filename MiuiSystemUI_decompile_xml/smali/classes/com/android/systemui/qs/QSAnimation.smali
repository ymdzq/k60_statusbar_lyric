.class public abstract Lcom/android/systemui/qs/QSAnimation;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INTERPOLATOR:Lmiuix/view/animation/CubicEaseInOutInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/utils/MiuiInterpolators;->CUBIC_EASE_IN_OUT:Lmiuix/view/animation/CubicEaseInOutInterpolator;

    .line 2
    sput-object v0, Lcom/android/systemui/qs/QSAnimation;->INTERPOLATOR:Lmiuix/view/animation/CubicEaseInOutInterpolator;

    .line 4
    return-void
    .line 6
.end method
