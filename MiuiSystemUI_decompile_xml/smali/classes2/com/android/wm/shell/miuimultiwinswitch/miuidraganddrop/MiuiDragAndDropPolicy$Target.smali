.class Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy$Target;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static final TYPE_FREEFORM:I = 0x2

.field static final TYPE_FULLSCREEN:I = 0x3

.field static final TYPE_NONE:I = -0x1

.field static final TYPE_SPLIT_LEFT:I = 0x0

.field static final TYPE_SPLIT_RIGHT:I = 0x1


# instance fields
.field hotRegion:Landroid/graphics/Rect;

.field final supported:Z

.field final type:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy$Target;->type:I

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy$Target;->hotRegion:Landroid/graphics/Rect;

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy$Target;->supported:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy$Target;->type:I

    .line 2
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    const-string/jumbo p0, "\u5168\u5c4f"

    .line 7
    return-object p0

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    const-string/jumbo p0, "\u5c0f\u7a97"

    .line 14
    return-object p0

    .line 17
    :cond_1
    if-nez p0, :cond_2

    .line 18
    const-string/jumbo p0, "\u5de6\u5206\u5c4f"

    .line 20
    return-object p0

    .line 23
    :cond_2
    const/4 v0, 0x1

    .line 24
    if-ne p0, v0, :cond_3

    .line 25
    const-string/jumbo p0, "\u53f3\u5206\u5c4f"

    .line 27
    return-object p0

    .line 30
    :cond_3
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Target{type="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy$Target;->type:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", hotRegion="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy$Target;->hotRegion:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", supported="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy$Target;->supported:Z

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const/16 p0, 0x7d

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    return-object p0
    .line 43
.end method
