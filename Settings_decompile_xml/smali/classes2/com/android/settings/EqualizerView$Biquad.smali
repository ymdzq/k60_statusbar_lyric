.class Lcom/android/settings/EqualizerView$Biquad;
.super Ljava/lang/Object;
.source "EqualizerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EqualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Biquad"
.end annotation


# instance fields
.field private a0:Lcom/android/settings/EqualizerView$Complex;

.field private a1:Lcom/android/settings/EqualizerView$Complex;

.field private a2:Lcom/android/settings/EqualizerView$Complex;

.field private b0:Lcom/android/settings/EqualizerView$Complex;

.field private b1:Lcom/android/settings/EqualizerView$Complex;

.field private b2:Lcom/android/settings/EqualizerView$Complex;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;
    .locals 4

    .line 227
    invoke-virtual {p1, p1}, Lcom/android/settings/EqualizerView$Complex;->mul(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/android/settings/EqualizerView$Biquad;->b0:Lcom/android/settings/EqualizerView$Complex;

    iget-object v2, p0, Lcom/android/settings/EqualizerView$Biquad;->b1:Lcom/android/settings/EqualizerView$Complex;

    invoke-virtual {v2, p1}, Lcom/android/settings/EqualizerView$Complex;->div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EqualizerView$Complex;->add(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/EqualizerView$Biquad;->b2:Lcom/android/settings/EqualizerView$Complex;

    invoke-virtual {v2, v0}, Lcom/android/settings/EqualizerView$Complex;->div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EqualizerView$Complex;->add(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/android/settings/EqualizerView$Biquad;->a0:Lcom/android/settings/EqualizerView$Complex;

    iget-object v3, p0, Lcom/android/settings/EqualizerView$Biquad;->a1:Lcom/android/settings/EqualizerView$Complex;

    invoke-virtual {v3, p1}, Lcom/android/settings/EqualizerView$Complex;->div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/settings/EqualizerView$Complex;->add(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/EqualizerView$Biquad;->a2:Lcom/android/settings/EqualizerView$Complex;

    invoke-virtual {p0, v0}, Lcom/android/settings/EqualizerView$Complex;->div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/EqualizerView$Complex;->add(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object p0

    .line 230
    invoke-virtual {v1, p0}, Lcom/android/settings/EqualizerView$Complex;->div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object p0

    return-object p0
.end method

.method protected setHighShelf(FFFF)V
    .locals 22

    move-object/from16 v0, p0

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v3, p1

    float-to-double v3, v3

    mul-double/2addr v3, v1

    move/from16 v1, p2

    float-to-double v1, v1

    div-double/2addr v3, v1

    const/high16 v1, 0x42200000    # 40.0f

    div-float v1, p3, v1

    float-to-double v1, v1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 215
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 216
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double v11, v9, v1

    add-double/2addr v11, v1

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v14, v13, p4

    sub-float/2addr v14, v13

    float-to-double v13, v14

    mul-double/2addr v11, v13

    add-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v5, v11

    .line 218
    new-instance v11, Lcom/android/settings/EqualizerView$Complex;

    add-double v12, v1, v9

    sub-double v9, v1, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v9

    add-double/2addr v14, v12

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double v16, v16, v7

    mul-double v16, v16, v5

    add-double v14, v14, v16

    mul-double/2addr v14, v1

    double-to-float v14, v14

    const/4 v15, 0x0

    invoke-direct {v11, v14, v15}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    iput-object v11, v0, Lcom/android/settings/EqualizerView$Biquad;->b0:Lcom/android/settings/EqualizerView$Complex;

    .line 219
    new-instance v11, Lcom/android/settings/EqualizerView$Complex;

    const-wide/high16 v16, -0x4000000000000000L    # -2.0

    mul-double v16, v16, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v12

    add-double v18, v9, v18

    mul-double v7, v16, v18

    double-to-float v7, v7

    invoke-direct {v11, v7, v15}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    iput-object v11, v0, Lcom/android/settings/EqualizerView$Biquad;->b1:Lcom/android/settings/EqualizerView$Complex;

    .line 220
    new-instance v7, Lcom/android/settings/EqualizerView$Complex;

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v9

    add-double v16, v12, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    mul-double v18, v18, v5

    sub-double v16, v16, v18

    move-wide/from16 p3, v5

    mul-double v5, v1, v16

    double-to-float v5, v5

    invoke-direct {v7, v5, v15}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    iput-object v7, v0, Lcom/android/settings/EqualizerView$Biquad;->b2:Lcom/android/settings/EqualizerView$Complex;

    .line 221
    new-instance v5, Lcom/android/settings/EqualizerView$Complex;

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v9

    sub-double v6, v12, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v18

    move-wide/from16 v20, p3

    mul-double v16, v16, v20

    add-double v6, v6, v16

    double-to-float v6, v6

    invoke-direct {v5, v6, v15}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    iput-object v5, v0, Lcom/android/settings/EqualizerView$Biquad;->a0:Lcom/android/settings/EqualizerView$Complex;

    .line 222
    new-instance v5, Lcom/android/settings/EqualizerView$Complex;

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    sub-double v6, v9, v6

    mul-double v6, v6, v18

    double-to-float v6, v6

    invoke-direct {v5, v6, v15}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    iput-object v5, v0, Lcom/android/settings/EqualizerView$Biquad;->a1:Lcom/android/settings/EqualizerView$Complex;

    .line 223
    new-instance v5, Lcom/android/settings/EqualizerView$Complex;

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v9, v3

    sub-double/2addr v12, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v1, v1, v18

    mul-double v1, v1, v20

    sub-double/2addr v12, v1

    double-to-float v1, v12

    invoke-direct {v5, v1, v15}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    iput-object v5, v0, Lcom/android/settings/EqualizerView$Biquad;->a2:Lcom/android/settings/EqualizerView$Complex;

    return-void
.end method
