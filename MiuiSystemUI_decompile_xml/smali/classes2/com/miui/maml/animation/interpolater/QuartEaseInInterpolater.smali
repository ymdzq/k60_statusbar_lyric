.class public Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    .line 1
    mul-float p0, p1, p1

    .line 2
    mul-float/2addr p0, p1

    .line 4
    mul-float/2addr p0, p1

    .line 5
    return p0
    .line 6
.end method
