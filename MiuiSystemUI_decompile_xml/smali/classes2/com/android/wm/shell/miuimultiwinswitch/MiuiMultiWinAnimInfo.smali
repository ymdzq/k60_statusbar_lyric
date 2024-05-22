.class public Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Cloneable;


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

.field private cornerRadius:F

.field private coverLayerAlpha:F

.field private leashAlpha:F

.field public mBottomBoardStrokeWidth:F

.field private otherSidePosX:F

.field private otherSidePosY:F

.field private posX:F

.field private posY:F

.field private scaleX:F

.field private scaleY:F

.field private textHeight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleX:F

    .line 7
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleY:F

    .line 9
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->leashAlpha:F

    .line 11
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->coverLayerAlpha:F

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public clone()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    invoke-direct {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 3
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posX:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posX:F

    .line 4
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posY:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posY:F

    .line 5
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleX:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleX:F

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleY:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleY:F

    .line 7
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->coverLayerAlpha:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->coverLayerAlpha:F

    .line 8
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardLeft:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardLeft:F

    .line 9
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardTop:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardTop:F

    .line 10
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardRight:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardRight:F

    .line 11
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardBottom:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardBottom:F

    .line 12
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerLeft:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerLeft:F

    .line 13
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTop:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTop:F

    .line 14
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerRight:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerRight:F

    .line 15
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottom:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottom:F

    .line 16
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftXRadius:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftXRadius:F

    .line 17
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightXRadius:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightXRadius:F

    .line 18
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightYRadius:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightYRadius:F

    .line 19
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightXRadius:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightXRadius:F

    .line 20
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightYRadius:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightYRadius:F

    .line 21
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftXRadius:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftXRadius:F

    .line 22
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftYRadius:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftYRadius:F

    .line 23
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectLeft:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectLeft:F

    .line 24
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectTop:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectTop:F

    .line 25
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectRight:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectRight:F

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectBottom:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectBottom:F

    .line 27
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appRadius:F

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appRadius:F

    .line 28
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->textHeight:F

    iput p0, v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->textHeight:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->clone()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAppDesRectBottom()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectBottom:F

    .line 2
    return p0
    .line 4
.end method

.method public getAppDesRectLeft()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectLeft:F

    .line 2
    return p0
    .line 4
.end method

.method public getAppDesRectRight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectRight:F

    .line 2
    return p0
    .line 4
.end method

.method public getAppDesRectTop()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectTop:F

    .line 2
    return p0
    .line 4
.end method

.method public getAppRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getBottomBoardBottom()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardBottom:F

    .line 2
    return p0
    .line 4
.end method

.method public getBottomBoardLeft()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardLeft:F

    .line 2
    return p0
    .line 4
.end method

.method public getBottomBoardRight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardRight:F

    .line 2
    return p0
    .line 4
.end method

.method public getBottomBoardTop()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardTop:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerBottom()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottom:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerBottomLeftXRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftXRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerBottomLeftYRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftYRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerBottomRightXRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightXRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerBottomRightYRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightYRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerLeft()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerLeft:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerRight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerRight:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerTop()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTop:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerTopLeftXRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftXRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerTopLeftYRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftYRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerTopRightXRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightXRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getChangeLayerTopRightYRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightYRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getCornerRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->cornerRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getCoverLayerAlpha()F
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->coverLayerAlpha:F

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

.method public getLeashAlpha()F
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->leashAlpha:F

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

.method public getOtherSidePosX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->otherSidePosX:F

    .line 2
    return p0
    .line 4
.end method

.method public getOtherSidePosY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->otherSidePosY:F

    .line 2
    return p0
    .line 4
.end method

.method public getPosX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posX:F

    .line 2
    return p0
    .line 4
.end method

.method public getPosY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posY:F

    .line 2
    return p0
    .line 4
.end method

.method public getScaleX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleX:F

    .line 2
    return p0
    .line 4
.end method

.method public getScaleY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleY:F

    .line 2
    return p0
    .line 4
.end method

.method public getTextHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->textHeight:F

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
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardLeft:F

    .line 10
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 12
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardTop:F

    .line 14
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 16
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardRight:F

    .line 18
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 20
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardBottom:F

    .line 22
    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 28
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerLeft:F

    .line 30
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 32
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTop:F

    .line 34
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 36
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerRight:F

    .line 38
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 40
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottom:F

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
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftXRadius:F

    .line 56
    const/4 v1, 0x1

    .line 58
    aget v1, v0, v1

    .line 59
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftYRadius:F

    .line 61
    const/4 v1, 0x2

    .line 63
    aget v1, v0, v1

    .line 64
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightXRadius:F

    .line 66
    const/4 v1, 0x3

    .line 68
    aget v1, v0, v1

    .line 69
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightYRadius:F

    .line 71
    const/4 v1, 0x4

    .line 73
    aget v1, v0, v1

    .line 74
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightXRadius:F

    .line 76
    const/4 v1, 0x5

    .line 78
    aget v1, v0, v1

    .line 79
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightYRadius:F

    .line 81
    const/4 v1, 0x6

    .line 83
    aget v1, v0, v1

    .line 84
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftXRadius:F

    .line 86
    const/4 v1, 0x7

    .line 88
    aget v0, v0, v1

    .line 89
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftYRadius:F

    .line 91
    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 93
    if-eqz v0, :cond_3

    .line 95
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 97
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectLeft:F

    .line 99
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 101
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectTop:F

    .line 103
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 105
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectRight:F

    .line 107
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 109
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectBottom:F

    .line 111
    :cond_3
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 113
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appRadius:F

    .line 115
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 117
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->textHeight:F

    .line 119
    iget p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 121
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->mBottomBoardStrokeWidth:F

    .line 123
    :cond_4
    return-void
    .line 125
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posX:F

    .line 3
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posY:F

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleX:F

    .line 9
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleY:F

    .line 11
    return-void
    .line 13
.end method

.method public setAppDesRectBottom(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectBottom:F

    .line 2
    return-void
    .line 4
.end method

.method public setAppDesRectLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectLeft:F

    .line 2
    return-void
    .line 4
.end method

.method public setAppDesRectRight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectRight:F

    .line 2
    return-void
    .line 4
.end method

.method public setAppDesRectTop(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectTop:F

    .line 2
    return-void
    .line 4
.end method

.method public setAppRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setBottomBoardBottom(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardBottom:F

    .line 2
    return-void
    .line 4
.end method

.method public setBottomBoardLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardLeft:F

    .line 2
    return-void
    .line 4
.end method

.method public setBottomBoardRight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardRight:F

    .line 2
    return-void
    .line 4
.end method

.method public setBottomBoardTop(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardTop:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerBottom(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottom:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerBottomLeftXRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftXRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerBottomLeftYRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftYRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerBottomRightXRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightXRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerBottomRightYRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightYRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerLeft:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerRight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerRight:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerTop(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTop:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerTopLeftXRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftXRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerTopLeftYRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftYRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerTopRightXRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightXRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setChangeLayerTopRightYRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightYRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->cornerRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setCoverLayerAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->coverLayerAlpha:F

    .line 2
    return-void
    .line 4
.end method

.method public setLeashAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->leashAlpha:F

    .line 2
    return-void
    .line 4
.end method

.method public setOtherSidePosX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->otherSidePosX:F

    .line 2
    return-void
    .line 4
.end method

.method public setOtherSidePosY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->otherSidePosY:F

    .line 2
    return-void
    .line 4
.end method

.method public setPosX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posX:F

    .line 2
    return-void
    .line 4
.end method

.method public setPosY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posY:F

    .line 2
    return-void
    .line 4
.end method

.method public setScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleX:F

    .line 2
    return-void
    .line 4
.end method

.method public setScaleY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleY:F

    .line 2
    return-void
    .line 4
.end method

.method public setTextHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->textHeight:F

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
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardLeft:F

    .line 8
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 10
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardTop:F

    .line 12
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 14
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardRight:F

    .line 16
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 18
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardBottom:F

    .line 20
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 22
    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerLeft:F

    .line 28
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 30
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTop:F

    .line 32
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 34
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerRight:F

    .line 36
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 38
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottom:F

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
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftXRadius:F

    .line 54
    aput v2, v0, v1

    .line 56
    const/4 v1, 0x1

    .line 58
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftYRadius:F

    .line 59
    aput v2, v0, v1

    .line 61
    const/4 v1, 0x2

    .line 63
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightXRadius:F

    .line 64
    aput v2, v0, v1

    .line 66
    const/4 v1, 0x3

    .line 68
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightYRadius:F

    .line 69
    aput v2, v0, v1

    .line 71
    const/4 v1, 0x4

    .line 73
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightXRadius:F

    .line 74
    aput v2, v0, v1

    .line 76
    const/4 v1, 0x5

    .line 78
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightYRadius:F

    .line 79
    aput v2, v0, v1

    .line 81
    const/4 v1, 0x6

    .line 83
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftXRadius:F

    .line 84
    aput v2, v0, v1

    .line 86
    const/4 v1, 0x7

    .line 88
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftYRadius:F

    .line 89
    aput v2, v0, v1

    .line 91
    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 93
    if-eqz v0, :cond_3

    .line 95
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectLeft:F

    .line 97
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 99
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectTop:F

    .line 101
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 103
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectRight:F

    .line 105
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 107
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectBottom:F

    .line 109
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 111
    :cond_3
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appRadius:F

    .line 113
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 115
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->textHeight:F

    .line 117
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 119
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->mBottomBoardStrokeWidth:F

    .line 121
    iput p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 123
    :cond_4
    return-void
    .line 125
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MiuiMultiWinAnimInfo{posX="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posX:F

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", posY="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->posY:F

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", scaleX="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleX:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", scaleY="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->scaleY:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", coverLayerAlpha="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->coverLayerAlpha:F

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", bottomBoardLeft="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardLeft:F

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", bottomBoardTop="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardTop:F

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", bottomBoardRight="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardRight:F

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", bottomBoardBottom="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->bottomBoardBottom:F

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", changeLayerLeft="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerLeft:F

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", changeLayerTop="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTop:F

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", changeLayerRight="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerRight:F

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", changeLayerBottom="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottom:F

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", changeLayerTopLeftXRadius="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftXRadius:F

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", changeLayerTopLeftYRadius="

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopLeftYRadius:F

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", changeLayerTopRightXRadius="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightXRadius:F

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", changeLayerTopRightYRadius="

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerTopRightYRadius:F

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", changeLayerBottomRightXRadius="

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightXRadius:F

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", changeLayerBottomRightYRadius="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomRightYRadius:F

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, ", changeLayerBottomLeftXRadius="

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftXRadius:F

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", changeLayerBottomLeftYRadius="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->changeLayerBottomLeftYRadius:F

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", appDesRectLeft="

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectLeft:F

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ", appDesRectTop="

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectTop:F

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, ", appDesRectRight="

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectRight:F

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, ", appDesRectBottom="

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appDesRectBottom:F

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, ", appRadius="

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->appRadius:F

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, ", textHeight="

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->textHeight:F

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 271
    const/16 p0, 0x7d

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object p0

    .line 282
    return-object p0
    .line 283
.end method
