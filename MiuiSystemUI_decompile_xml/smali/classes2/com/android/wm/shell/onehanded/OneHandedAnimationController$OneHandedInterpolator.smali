.class public Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;->this$0:Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    .line 2
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .line 1
    const/high16 p0, -0x3ee00000    # -10.0f

    .line 2
    mul-float/2addr p0, p1

    .line 4
    float-to-double v0, p0

    .line 5
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 6
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 8
    move-result-wide v0

    .line 11
    const/high16 p0, 0x40800000    # 4.0f

    .line 12
    sub-float/2addr p1, p0

    .line 14
    div-float/2addr p1, p0

    .line 15
    float-to-double p0, p1

    .line 16
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 17
    mul-double/2addr p0, v2

    .line 22
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 23
    div-double/2addr p0, v2

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .line 26
    move-result-wide p0

    .line 29
    mul-double/2addr p0, v0

    .line 30
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 31
    add-double/2addr p0, v0

    .line 33
    double-to-float p0, p0

    .line 34
    return p0
    .line 35
.end method
