.class public Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
    mul-float/2addr p0, p1

    .line 6
    return p0
    .line 7
.end method
