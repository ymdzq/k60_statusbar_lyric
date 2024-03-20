.class public final Lcom/android/settings/widget/WaterBox$LineEndPoints;
.super Ljava/lang/Object;
.source "WaterBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/WaterBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LineEndPoints"
.end annotation


# instance fields
.field private final endPoint:Landroid/graphics/PointF;

.field private final startPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/settings/widget/WaterBox$LineEndPoints;->startPoint:Landroid/graphics/PointF;

    .line 114
    iput-object p2, p0, Lcom/android/settings/widget/WaterBox$LineEndPoints;->endPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final getEndPoint()Landroid/graphics/PointF;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/widget/WaterBox$LineEndPoints;->endPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getStartPoint()Landroid/graphics/PointF;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/widget/WaterBox$LineEndPoints;->startPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/settings/widget/WaterBox$LineEndPoints;->startPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/graphics/PointF;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object p0, p0, Lcom/android/settings/widget/WaterBox$LineEndPoints;->endPoint:Landroid/graphics/PointF;

    if-eqz p0, :cond_1

    .line 97
    invoke-virtual {p0}, Landroid/graphics/PointF;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineEndPoints(startPoint="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lcom/android/settings/widget/WaterBox$LineEndPoints;->startPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPoint="

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object p0, p0, Lcom/android/settings/widget/WaterBox$LineEndPoints;->endPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
