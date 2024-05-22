.class public final Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/wm/shell/common/transition/MiuiRotationAnimationUtils$SineEaseInInterpolater;->$r8$classId:I

    .line 2
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 11
    goto :goto_0

    .line 14
    :pswitch_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 15
    float-to-double p0, p1

    .line 20
    mul-double/2addr p0, v0

    .line 21
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 22
    div-double/2addr p0, v0

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 25
    move-result-wide p0

    .line 28
    double-to-float p0, p0

    .line 29
    sub-float/2addr p0, v2

    .line 30
    const/high16 p1, -0x41000000    # -0.5f

    .line 31
    mul-float/2addr p0, p1

    .line 33
    return p0

    .line 34
    :pswitch_1
    sub-float/2addr p1, v2

    .line 35
    mul-float p0, p1, p1

    .line 36
    mul-float/2addr p0, p1

    .line 38
    mul-float/2addr p0, p1

    .line 39
    sub-float/2addr v2, p0

    .line 40
    return v2

    .line 41
    :pswitch_2
    float-to-double p0, p1

    .line 42
    mul-double/2addr p0, v0

    .line 43
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 44
    move-result-wide p0

    .line 47
    double-to-float p0, p0

    .line 48
    neg-float p0, p0

    .line 49
    add-float/2addr p0, v2

    .line 50
    return p0

    .line 51
    :goto_0
    float-to-double p0, p1

    .line 52
    mul-double/2addr p0, v0

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .line 54
    move-result-wide p0

    .line 57
    double-to-float p0, p0

    .line 58
    return p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 60
.end method
