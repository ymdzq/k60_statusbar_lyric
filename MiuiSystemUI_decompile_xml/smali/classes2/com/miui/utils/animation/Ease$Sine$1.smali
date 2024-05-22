.class public final Lcom/miui/utils/animation/Ease$Sine$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/utils/animation/Ease$Sine$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    .line 1
    iget p0, p0, Lcom/miui/utils/animation/Ease$Sine$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 7
    :pswitch_0
    goto :goto_1

    .line 10
    :pswitch_1
    div-float/2addr p1, v1

    .line 11
    sub-float/2addr p1, v1

    .line 12
    mul-float p0, p1, p1

    .line 13
    mul-float/2addr p0, p1

    .line 15
    mul-float/2addr p0, p1

    .line 16
    mul-float/2addr p0, p1

    .line 17
    add-float/2addr p0, v1

    .line 18
    mul-float/2addr p0, v1

    .line 19
    goto :goto_2

    .line 20
    :pswitch_2
    const/high16 p0, 0x3f000000    # 0.5f

    .line 21
    div-float/2addr p1, p0

    .line 23
    cmpg-float v1, p1, v1

    .line 24
    if-gez v1, :cond_0

    .line 26
    mul-float/2addr p0, p1

    .line 28
    mul-float/2addr p0, p1

    .line 29
    mul-float/2addr p0, p1

    .line 30
    add-float/2addr p0, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 33
    sub-float/2addr p1, v1

    .line 35
    mul-float v2, p1, p1

    .line 36
    mul-float/2addr v2, p1

    .line 38
    add-float/2addr v2, v1

    .line 39
    mul-float/2addr v2, p0

    .line 40
    add-float p0, v2, v0

    .line 41
    :goto_0
    return p0

    .line 43
    :goto_1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 44
    float-to-double p0, p1

    .line 49
    mul-double/2addr p0, v2

    .line 50
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 51
    div-double/2addr p0, v2

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 54
    move-result-wide p0

    .line 57
    double-to-float p0, p0

    .line 58
    sub-float/2addr p0, v1

    .line 59
    const/high16 p1, -0x41000000    # -0.5f

    .line 60
    mul-float/2addr p0, p1

    .line 62
    :goto_2
    add-float/2addr p0, v0

    .line 63
    return p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 66
.end method
