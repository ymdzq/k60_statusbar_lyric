.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TYPE_FREEFORM:I = 0x5

.field public static final TYPE_FREEFORM_MINI:I = 0x6

.field public static final TYPE_FULLSCREEN:I = 0x0

.field public static final TYPE_SPLIT_LEFTORTOP:I = 0x1

.field public static final TYPE_SPLIT_RIGHTORBOTTOM:I = 0x2


# instance fields
.field private hotAreaRegion:Landroid/graphics/Rect;

.field private final hotAreaType:I

.field private mIsSupport:Z

.field private scaleX:F

.field private scaleY:F


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->hotAreaType:I

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->mIsSupport:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public getHotAreaRegion()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->hotAreaRegion:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public getHotAreaType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->hotAreaType:I

    .line 2
    return p0
    .line 4
.end method

.method public getScaleX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->scaleX:F

    .line 2
    return p0
    .line 4
.end method

.method public getScaleY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->scaleY:F

    .line 2
    return p0
    .line 4
.end method

.method public isIsSupport()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->mIsSupport:Z

    .line 2
    return p0
    .line 4
.end method

.method public setHotAreaRegion(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->hotAreaRegion:Landroid/graphics/Rect;

    .line 2
    return-void
    .line 4
.end method

.method public setScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->scaleX:F

    .line 2
    return-void
    .line 4
.end method

.method public setScaleY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->scaleY:F

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "HotArea{hotAreaType="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->hotAreaType:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", hotAreaRegion="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->hotAreaRegion:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", scaleX="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->scaleX:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", scaleY="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->scaleY:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", mIsSupport="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->mIsSupport:Z

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const/16 p0, 0x7d

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    return-object p0
    .line 63
.end method
