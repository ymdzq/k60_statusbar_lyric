.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private appDesRectBottom:F

.field private appDesRectLeft:F

.field private appDesRectRight:F

.field private appDesRectTop:F

.field private appRadius:F

.field private bottomBoardBottom:F

.field private bottomBoardLeft:F

.field private bottomBoardRight:F

.field private bottomBoardTop:F

.field private changeLayerBottom:F

.field private changeLayerBottomLeftXRadius:F

.field private changeLayerBottomLeftYRadius:F

.field private changeLayerBottomRightXRadius:F

.field private changeLayerBottomRightYRadius:F

.field private changeLayerLeft:F

.field private changeLayerRight:F

.field private changeLayerTop:F

.field private changeLayerTopLeftXRadius:F

.field private changeLayerTopLeftYRadius:F

.field private changeLayerTopRightXRadius:F

.field private changeLayerTopRightYRadius:F

.field private clipXWidth:F

.field private clipYHeight:F

.field private cornerRadius:F

.field private coverLayerAlpha:F

.field private lCAlpha:F

.field private lCDegreeRange:F

.field private lCRadius:F

.field private lCThickness:F

.field private lCornerX:F

.field private lCornerY:F

.field private leashAlpha:F

.field public mBottomBoardStrokeWidth:F

.field private mFolmeAlpha:F

.field private mFolmePosX:F

.field private mFolmePosY:F

.field private mFolmePosZ:F

.field private mFolmeRotateX:F

.field private mFolmeRotateY:F

.field private mFolmeRotateZ:F

.field private mFolmeScaleX:F

.field private mFolmeScaleY:F

.field private mFolmeStrokeThickness:F

.field private rCAlpha:F

.field private rCDegreeRange:F

.field private rCRadius:F

.field private rCThickness:F

.field private rCornerX:F

.field private rCornerY:F

.field private radius:F

.field private shadowAlpha:F

.field private shadowDispersion:F

.field private shadowOffsetX:F

.field private shadowOffsetY:F

.field private shadowRadius:F

.field private textHeight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeScaleX:F

    .line 7
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeScaleY:F

    .line 9
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeAlpha:F

    .line 11
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->leashAlpha:F

    .line 13
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->coverLayerAlpha:F

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public getClipXWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->clipXWidth:F

    .line 2
    return p0
    .line 4
.end method

.method public getClipYHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->clipYHeight:F

    .line 2
    return p0
    .line 4
.end method

.method public getCornerRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->cornerRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getCoverLayerAlpha()F
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->coverLayerAlpha:F

    .line 2
    const/4 v0, 0x0

    .line 4
    cmpg-float v1, p0, v0

    .line 5
    if-gez v1, :cond_0

    .line 7
    move p0, v0

    .line 9
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    cmpl-float v1, p0, v0

    .line 12
    if-lez v1, :cond_1

    .line 14
    move p0, v0

    .line 16
    :cond_1
    return p0
    .line 17
.end method

.method public getFolmeAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public getFolmePosX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosX:F

    .line 2
    return p0
    .line 4
.end method

.method public getFolmePosY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosY:F

    .line 2
    return p0
    .line 4
.end method

.method public getFolmePosZ()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosZ:F

    .line 2
    return p0
    .line 4
.end method

.method public getFolmeRotateX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateX:F

    .line 2
    return p0
    .line 4
.end method

.method public getFolmeRotateY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateY:F

    .line 2
    return p0
    .line 4
.end method

.method public getFolmeRotateZ()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateZ:F

    .line 2
    return p0
    .line 4
.end method

.method public getFolmeScaleX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeScaleX:F

    .line 2
    return p0
    .line 4
.end method

.method public getFolmeScaleY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeScaleY:F

    .line 2
    return p0
    .line 4
.end method

.method public getFolmeStrokeThickness()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeStrokeThickness:F

    .line 2
    return p0
    .line 4
.end method

.method public getLeashAlpha()F
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->leashAlpha:F

    .line 2
    const/4 v0, 0x0

    .line 4
    cmpg-float v1, p0, v0

    .line 5
    if-gez v1, :cond_0

    .line 7
    move p0, v0

    .line 9
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    cmpl-float v1, p0, v0

    .line 12
    if-lez v1, :cond_1

    .line 14
    move p0, v0

    .line 16
    :cond_1
    return p0
    .line 17
.end method

.method public getRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->radius:F

    .line 2
    return p0
    .line 4
.end method

.method public getShadowAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->shadowAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public getShadowDispersion()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->shadowDispersion:F

    .line 2
    return p0
    .line 4
.end method

.method public getShadowOffsetX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->shadowOffsetX:F

    .line 2
    return p0
    .line 4
.end method

.method public getShadowOffsetY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->shadowOffsetY:F

    .line 2
    return p0
    .line 4
.end method

.method public getShadowRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->shadowRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getlCAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public getlCDegreeRange()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCDegreeRange:F

    .line 2
    return p0
    .line 4
.end method

.method public getlCRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getlCThickness()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCThickness:F

    .line 2
    return p0
    .line 4
.end method

.method public getlCornerX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCornerX:F

    .line 2
    return p0
    .line 4
.end method

.method public getlCornerY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCornerY:F

    .line 2
    return p0
    .line 4
.end method

.method public getrCAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public getrCDegreeRange()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCDegreeRange:F

    .line 2
    return p0
    .line 4
.end method

.method public getrCRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getrCThickness()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCThickness:F

    .line 2
    return p0
    .line 4
.end method

.method public getrCornerX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCornerX:F

    .line 2
    return p0
    .line 4
.end method

.method public getrCornerY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCornerY:F

    .line 2
    return p0
    .line 4
.end method

.method public initShadowInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 8
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->bottomBoardLeft:F

    .line 10
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 12
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->bottomBoardTop:F

    .line 14
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 16
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->bottomBoardRight:F

    .line 18
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 20
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->bottomBoardBottom:F

    .line 22
    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 28
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerLeft:F

    .line 30
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 32
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerTop:F

    .line 34
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 36
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerRight:F

    .line 38
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 40
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerBottom:F

    .line 42
    :cond_1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 44
    if-eqz v0, :cond_2

    .line 46
    array-length v1, v0

    .line 48
    const/16 v2, 0x8

    .line 49
    if-ne v1, v2, :cond_2

    .line 51
    const/4 v1, 0x0

    .line 53
    aget v1, v0, v1

    .line 54
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerTopLeftXRadius:F

    .line 56
    const/4 v1, 0x1

    .line 58
    aget v1, v0, v1

    .line 59
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerTopLeftYRadius:F

    .line 61
    const/4 v1, 0x2

    .line 63
    aget v1, v0, v1

    .line 64
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerTopRightXRadius:F

    .line 66
    const/4 v1, 0x3

    .line 68
    aget v1, v0, v1

    .line 69
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerTopRightYRadius:F

    .line 71
    const/4 v1, 0x4

    .line 73
    aget v1, v0, v1

    .line 74
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerBottomRightXRadius:F

    .line 76
    const/4 v1, 0x5

    .line 78
    aget v1, v0, v1

    .line 79
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerBottomRightYRadius:F

    .line 81
    const/4 v1, 0x6

    .line 83
    aget v1, v0, v1

    .line 84
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerBottomLeftXRadius:F

    .line 86
    const/4 v1, 0x7

    .line 88
    aget v0, v0, v1

    .line 89
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerBottomLeftYRadius:F

    .line 91
    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 93
    if-eqz v0, :cond_3

    .line 95
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 97
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->appDesRectLeft:F

    .line 99
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 101
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->appDesRectTop:F

    .line 103
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 105
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->appDesRectRight:F

    .line 107
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 109
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->appDesRectBottom:F

    .line 111
    :cond_3
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 113
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->appRadius:F

    .line 115
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 117
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->textHeight:F

    .line 119
    iget p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 121
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mBottomBoardStrokeWidth:F

    .line 123
    :cond_4
    return-void
    .line 125
.end method

.method public setClipXWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->clipXWidth:F

    .line 2
    return-void
    .line 4
.end method

.method public setClipYHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->clipYHeight:F

    .line 2
    return-void
    .line 4
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->cornerRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setCoverLayerAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->coverLayerAlpha:F

    .line 2
    return-void
    .line 4
.end method

.method public setFolmeAlpha(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v0, "setFolmeAlpha: folmeAlpha is NaN! mFolmeAlpha="

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeAlpha:F

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "MiuiFreeformModeTaskInfo"

    .line 25
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeAlpha:F

    .line 31
    return-void
    .line 33
.end method

.method public setFolmePosX(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v0, "setFolmePosX: folmePosX is NaN! mFolmePosX="

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosX:F

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "MiuiFreeformModeTaskInfo"

    .line 25
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosX:F

    .line 31
    return-void
    .line 33
.end method

.method public setFolmePosY(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v0, "setFolmePosY: folmePosY is NaN! mFolmePosY="

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosY:F

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "MiuiFreeformModeTaskInfo"

    .line 25
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosY:F

    .line 31
    return-void
    .line 33
.end method

.method public setFolmePosZ(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v0, "setFolmePosZ: folmePosZ is NaN! mFolmePosZ="

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosZ:F

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "MiuiFreeformModeTaskInfo"

    .line 25
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosZ:F

    .line 31
    return-void
    .line 33
.end method

.method public setFolmeRotateX(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v0, "setFolmeRotateX: folmeRotateX is NaN! mFolmeRotateX="

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateX:F

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "MiuiFreeformModeTaskInfo"

    .line 25
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateX:F

    .line 31
    return-void
    .line 33
.end method

.method public setFolmeRotateY(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v0, "setFolmeRotateY: folmeRotateY is NaN! mFolmeRotateY="

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateY:F

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "MiuiFreeformModeTaskInfo"

    .line 25
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateY:F

    .line 31
    return-void
    .line 33
.end method

.method public setFolmeRotateZ(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v0, "setFolmeRotateZ: folmeRotateZ is NaN! mFolmeRotateZ="

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateZ:F

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "MiuiFreeformModeTaskInfo"

    .line 25
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateZ:F

    .line 31
    return-void
    .line 33
.end method

.method public setFolmeScaleX(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v0, "setFolmeScaleX: folmeScaleX is NaN! mFolmeScaleX="

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeScaleX:F

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "MiuiFreeformModeTaskInfo"

    .line 25
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeScaleX:F

    .line 31
    return-void
    .line 33
.end method

.method public setFolmeScaleY(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v0, "setFolmeScaleY: folmeScaleY is NaN! mFolmeScaleY="

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeScaleY:F

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "MiuiFreeformModeTaskInfo"

    .line 25
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeScaleY:F

    .line 31
    return-void
    .line 33
.end method

.method public setFolmeStrokeThickness(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeStrokeThickness:F

    .line 2
    return-void
    .line 4
.end method

.method public setLeashAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->leashAlpha:F

    .line 2
    return-void
    .line 4
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->radius:F

    .line 2
    return-void
    .line 4
.end method

.method public setShadowAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->shadowAlpha:F

    .line 2
    return-void
    .line 4
.end method

.method public setShadowDispersion(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->shadowDispersion:F

    .line 2
    return-void
    .line 4
.end method

.method public setShadowOffsetX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->shadowOffsetX:F

    .line 2
    return-void
    .line 4
.end method

.method public setShadowOffsetY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->shadowOffsetY:F

    .line 2
    return-void
    .line 4
.end method

.method public setShadowRaidus(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->shadowRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setValueToTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->bottomBoardLeft:F

    .line 8
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 10
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->bottomBoardTop:F

    .line 12
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 14
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->bottomBoardRight:F

    .line 16
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 18
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->bottomBoardBottom:F

    .line 20
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 22
    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerLeft:F

    .line 28
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 30
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerTop:F

    .line 32
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 34
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerRight:F

    .line 36
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 38
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerBottom:F

    .line 40
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 42
    :cond_1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 44
    if-eqz v0, :cond_2

    .line 46
    array-length v1, v0

    .line 48
    const/16 v2, 0x8

    .line 49
    if-ne v1, v2, :cond_2

    .line 51
    const/4 v1, 0x0

    .line 53
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerTopLeftXRadius:F

    .line 54
    aput v2, v0, v1

    .line 56
    const/4 v1, 0x1

    .line 58
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerTopLeftYRadius:F

    .line 59
    aput v2, v0, v1

    .line 61
    const/4 v1, 0x2

    .line 63
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerTopRightXRadius:F

    .line 64
    aput v2, v0, v1

    .line 66
    const/4 v1, 0x3

    .line 68
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerTopRightYRadius:F

    .line 69
    aput v2, v0, v1

    .line 71
    const/4 v1, 0x4

    .line 73
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerBottomRightXRadius:F

    .line 74
    aput v2, v0, v1

    .line 76
    const/4 v1, 0x5

    .line 78
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerBottomRightYRadius:F

    .line 79
    aput v2, v0, v1

    .line 81
    const/4 v1, 0x6

    .line 83
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerBottomLeftXRadius:F

    .line 84
    aput v2, v0, v1

    .line 86
    const/4 v1, 0x7

    .line 88
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->changeLayerBottomLeftYRadius:F

    .line 89
    aput v2, v0, v1

    .line 91
    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 93
    if-eqz v0, :cond_3

    .line 95
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->appDesRectLeft:F

    .line 97
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 99
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->appDesRectTop:F

    .line 101
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 103
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->appDesRectRight:F

    .line 105
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 107
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->appDesRectBottom:F

    .line 109
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 111
    :cond_3
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->appRadius:F

    .line 113
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 115
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->textHeight:F

    .line 117
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 119
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mBottomBoardStrokeWidth:F

    .line 121
    iput p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 123
    :cond_4
    return-void
    .line 125
.end method

.method public setlCAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCAlpha:F

    .line 2
    return-void
    .line 4
.end method

.method public setlCDegreeRange(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCDegreeRange:F

    .line 2
    return-void
    .line 4
.end method

.method public setlCRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setlCThickness(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCThickness:F

    .line 2
    return-void
    .line 4
.end method

.method public setlCornerX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCornerX:F

    .line 2
    return-void
    .line 4
.end method

.method public setlCornerY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->lCornerY:F

    .line 2
    return-void
    .line 4
.end method

.method public setrCAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCAlpha:F

    .line 2
    return-void
    .line 4
.end method

.method public setrCDegreeRange(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCDegreeRange:F

    .line 2
    return-void
    .line 4
.end method

.method public setrCRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setrCThickness(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCThickness:F

    .line 2
    return-void
    .line 4
.end method

.method public setrCornerX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCornerX:F

    .line 2
    return-void
    .line 4
.end method

.method public setrCornerY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->rCornerY:F

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "FolmeControl{FolmePosX="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosX:F

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", FolmePosY="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosY:F

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", FolmePosZ="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmePosZ:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", FolmeRotateX="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateX:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", FolmeRotateY="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateY:F

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", FolmeRotateZ="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeRotateZ:F

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", FolmeScaleX="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeScaleX:F

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", FolmeScaleY="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeScaleY:F

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", FolmeAlpha="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->mFolmeAlpha:F

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    const/16 p0, 0x7d

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 102
    return-object p0
    .line 103
.end method
