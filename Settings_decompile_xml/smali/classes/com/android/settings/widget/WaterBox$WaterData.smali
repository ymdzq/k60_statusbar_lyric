.class public final Lcom/android/settings/widget/WaterBox$WaterData;
.super Ljava/lang/Object;
.source "WaterBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/WaterBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaterData"
.end annotation


# instance fields
.field private edgeRot:F

.field private effectPer:F

.field private rot:F

.field private value:F

.field private waterAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 128
    iput v0, p0, Lcom/android/settings/widget/WaterBox$WaterData;->edgeRot:F

    .line 130
    iput v0, p0, Lcom/android/settings/widget/WaterBox$WaterData;->rot:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 131
    iput v0, p0, Lcom/android/settings/widget/WaterBox$WaterData;->value:F

    .line 132
    iput v0, p0, Lcom/android/settings/widget/WaterBox$WaterData;->waterAlpha:F

    return-void
.end method


# virtual methods
.method public final getEdgeRot()F
    .locals 0

    .line 143
    iget p0, p0, Lcom/android/settings/widget/WaterBox$WaterData;->edgeRot:F

    return p0
.end method

.method public final getEffectPer()F
    .locals 0

    .line 159
    iget p0, p0, Lcom/android/settings/widget/WaterBox$WaterData;->effectPer:F

    return p0
.end method

.method public final getRot()F
    .locals 0

    .line 151
    iget p0, p0, Lcom/android/settings/widget/WaterBox$WaterData;->rot:F

    return p0
.end method

.method public final getValue()F
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/settings/widget/WaterBox$WaterData;->value:F

    return p0
.end method

.method public final getWaterAlpha()F
    .locals 0

    .line 167
    iget p0, p0, Lcom/android/settings/widget/WaterBox$WaterData;->waterAlpha:F

    return p0
.end method

.method public final setEffectPer(F)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/android/settings/widget/WaterBox$WaterData;->effectPer:F

    return-void
.end method

.method public final setValue(F)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/android/settings/widget/WaterBox$WaterData;->value:F

    return-void
.end method

.method public final setWaterAlpha(F)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/android/settings/widget/WaterBox$WaterData;->waterAlpha:F

    return-void
.end method
