.class public abstract Lcom/miui/utils/MiuiInterpolators;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CUBIC_EASE_IN_OUT:Lmiuix/view/animation/CubicEaseInOutInterpolator;

.field public static final EXP_EASE_OUT:Lmiuix/view/animation/ExponentialEaseOutInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    .line 2
    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/utils/MiuiInterpolators;->CUBIC_EASE_IN_OUT:Lmiuix/view/animation/CubicEaseInOutInterpolator;

    .line 7
    new-instance v0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    .line 9
    invoke-direct {v0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    .line 11
    sput-object v0, Lcom/miui/utils/MiuiInterpolators;->EXP_EASE_OUT:Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    .line 14
    return-void
    .line 16
.end method
