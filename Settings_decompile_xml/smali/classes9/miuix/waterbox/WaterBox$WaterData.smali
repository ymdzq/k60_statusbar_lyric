.class Lmiuix/waterbox/WaterBox$WaterData;
.super Ljava/lang/Object;
.source "WaterBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/waterbox/WaterBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaterData"
.end annotation


# instance fields
.field private edgeRot:F

.field private effectPer:F

.field private rot:F

.field private value:F

.field private waterAlpha:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 143
    iput v0, p0, Lmiuix/waterbox/WaterBox$WaterData;->edgeRot:F

    .line 151
    iput v0, p0, Lmiuix/waterbox/WaterBox$WaterData;->rot:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 152
    iput v0, p0, Lmiuix/waterbox/WaterBox$WaterData;->value:F

    .line 153
    iput v0, p0, Lmiuix/waterbox/WaterBox$WaterData;->waterAlpha:F

    return-void
.end method


# virtual methods
.method getEdgeRot()F
    .locals 0

    .line 164
    iget p0, p0, Lmiuix/waterbox/WaterBox$WaterData;->edgeRot:F

    return p0
.end method

.method getEffectPer()F
    .locals 0

    .line 180
    iget p0, p0, Lmiuix/waterbox/WaterBox$WaterData;->effectPer:F

    return p0
.end method

.method getRot()F
    .locals 0

    .line 172
    iget p0, p0, Lmiuix/waterbox/WaterBox$WaterData;->rot:F

    return p0
.end method

.method getValue()F
    .locals 0

    .line 156
    iget p0, p0, Lmiuix/waterbox/WaterBox$WaterData;->value:F

    return p0
.end method

.method getWaterAlpha()F
    .locals 0

    .line 188
    iget p0, p0, Lmiuix/waterbox/WaterBox$WaterData;->waterAlpha:F

    return p0
.end method

.method setEdgeRot(F)V
    .locals 0

    .line 168
    iput p1, p0, Lmiuix/waterbox/WaterBox$WaterData;->edgeRot:F

    return-void
.end method

.method setEffectPer(F)V
    .locals 0

    .line 184
    iput p1, p0, Lmiuix/waterbox/WaterBox$WaterData;->effectPer:F

    return-void
.end method

.method setRot(F)V
    .locals 0

    .line 176
    iput p1, p0, Lmiuix/waterbox/WaterBox$WaterData;->rot:F

    return-void
.end method

.method setValue(F)V
    .locals 0

    .line 160
    iput p1, p0, Lmiuix/waterbox/WaterBox$WaterData;->value:F

    return-void
.end method

.method setWaterAlpha(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 195
    :cond_0
    iput p1, p0, Lmiuix/waterbox/WaterBox$WaterData;->waterAlpha:F

    return-void
.end method
