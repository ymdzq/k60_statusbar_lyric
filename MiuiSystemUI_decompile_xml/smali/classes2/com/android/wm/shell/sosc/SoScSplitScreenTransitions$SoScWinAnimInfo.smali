.class Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private leashAlpha:F

.field private posX:F

.field private posY:F

.field private scaleX:F

.field private scaleY:F

.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->scaleX:F

    .line 9
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->scaleY:F

    .line 11
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->leashAlpha:F

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public getLeashAlpha()F
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->leashAlpha:F

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

.method public getPosX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->posX:F

    .line 2
    return p0
    .line 4
.end method

.method public getPosY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->posY:F

    .line 2
    return p0
    .line 4
.end method

.method public getScaleX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->scaleX:F

    .line 2
    return p0
    .line 4
.end method

.method public getScaleY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->scaleY:F

    .line 2
    return p0
    .line 4
.end method

.method public setLeashAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->leashAlpha:F

    .line 2
    return-void
    .line 4
.end method

.method public setPosX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->posX:F

    .line 2
    return-void
    .line 4
.end method

.method public setPosY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->posY:F

    .line 2
    return-void
    .line 4
.end method

.method public setScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->scaleX:F

    .line 2
    return-void
    .line 4
.end method

.method public setScaleY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;->scaleY:F

    .line 2
    return-void
    .line 4
.end method
