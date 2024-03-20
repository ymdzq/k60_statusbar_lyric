.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$1;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 4
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    .line 6
    if-eqz p1, :cond_2

    .line 8
    iget p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    .line 10
    int-to-float p0, p0

    .line 12
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    add-float/2addr p0, p1

    .line 15
    const/high16 p1, 0x44800000    # 1024.0f

    .line 16
    div-float/2addr p0, p1

    .line 18
    const/16 p1, 0x8

    .line 19
    int-to-float p1, p1

    .line 21
    mul-float/2addr p0, p1

    .line 22
    float-to-int p0, p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    const-wide p0, 0x3feec85d2b226f4bL    # 0.9619584887

    .line 26
    goto :goto_1

    .line 31
    :cond_0
    const/16 p1, 0x1f4

    .line 32
    const-wide v0, 0x3fdd1eb851eb851fL    # 0.455

    .line 34
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 39
    if-le p0, p1, :cond_1

    .line 41
    int-to-double p0, p0

    .line 43
    mul-double/2addr p0, v2

    .line 44
    const-wide v4, 0x409ffc0000000000L    # 2047.0

    .line 45
    div-double/2addr p0, v4

    .line 50
    const-wide v4, 0x407ae00000000000L    # 430.0

    .line 51
    mul-double/2addr p0, v4

    .line 56
    const-wide v4, 0x4082c00000000000L    # 600.0

    .line 57
    div-double/2addr p0, v4

    .line 62
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 63
    move-result-wide p0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    int-to-double p0, p0

    .line 68
    mul-double/2addr p0, v2

    .line 69
    const-wide v4, 0x409a400000000000L    # 1680.0

    .line 70
    div-double/2addr p0, v4

    .line 75
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 76
    move-result-wide p0

    .line 79
    :goto_0
    sub-double p0, v2, p0

    .line 80
    :goto_1
    double-to-float p0, p0

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    const-string v0, "caculate overlay alpha: "

    .line 86
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 99
    const-string v0, "MiuiGxzwOverlayView"

    .line 100
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 105
    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    move-result-object p0

    .line 110
    return-object p0
    .line 111
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Float;

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 6
    move-result p1

    .line 9
    iput p1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 10
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 12
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->addOverlayView()V

    .line 14
    return-void
    .line 17
.end method
