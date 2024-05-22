.class public final Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final QUART_EASE_OUT_INTERPOLATOR:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$QuartEaseOutInterpolator;

.field public final SCALE_DOWN_PHYSIC_BASED_INTERPOLATOR:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;

.field public final SCALE_UP_PHYSIC_BASED_INTERPOLATOR:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;

.field public mBackgroundForScale:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$BackgroundForScale;

.field public mRect:Landroid/graphics/Rect;

.field public final mScaleTransformation:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 5
    invoke-direct {v0}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->mScaleTransformation:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 10
    new-instance v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$QuartEaseOutInterpolator;

    .line 12
    invoke-direct {v0}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$QuartEaseOutInterpolator;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->QUART_EASE_OUT_INTERPOLATOR:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$QuartEaseOutInterpolator;

    .line 17
    new-instance v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;

    .line 19
    const v1, 0x3f4ccccd    # 0.8f

    .line 21
    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;-><init>(F)V

    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->SCALE_UP_PHYSIC_BASED_INTERPOLATOR:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;

    .line 27
    new-instance v0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;

    .line 29
    const v1, 0x3f47ae14    # 0.78f

    .line 31
    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;-><init>(F)V

    .line 34
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition;->SCALE_DOWN_PHYSIC_BASED_INTERPOLATOR:Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;

    .line 37
    return-void
    .line 39
.end method
