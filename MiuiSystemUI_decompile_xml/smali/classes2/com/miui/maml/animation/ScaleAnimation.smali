.class public Lcom/miui/maml/animation/ScaleAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ScaleAnimation"


# instance fields
.field private mDelayValueX:D

.field private mDelayValueY:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "x"

    .line 2
    const-string/jumbo v1, "y"

    .line 5
    const-string/jumbo v2, "value"

    .line 8
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    const-string v1, "Item"

    .line 15
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 17
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/BaseAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 21
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 25
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueX:D

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 31
    move-result-wide p1

    .line 34
    iput-wide p1, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueY:D

    .line 35
    return-void
    .line 37
.end method

.method private getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 4
    goto :goto_1

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    invoke-virtual {p1, p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 15
    :goto_0
    invoke-virtual {p1, p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 16
    move-result-wide p0

    .line 19
    :goto_1
    return-wide p0
    .line 20
.end method

.method private getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 4
    goto :goto_1

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    invoke-virtual {p1, p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, 0x2

    .line 15
    :goto_0
    invoke-virtual {p1, p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 16
    move-result-wide p0

    .line 19
    :goto_1
    return-wide p0
    .line 20
.end method


# virtual methods
.method public getDelayValue(I)D
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    iget-wide p0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueY:D

    .line 8
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-wide p0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueX:D

    .line 11
    :goto_1
    return-wide p0
    .line 13
.end method

.method public final getScaleX()D
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    .line 3
    move-result-wide v0

    .line 6
    return-wide v0
    .line 7
.end method

.method public final getScaleY()D
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    .line 3
    move-result-wide v0

    .line 6
    return-wide v0
    .line 7
.end method

.method public onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    if-nez p2, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 7
    move-result-wide v0

    .line 10
    invoke-direct {p0, p2}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 11
    move-result-wide v2

    .line 14
    sub-double/2addr v2, v0

    .line 15
    float-to-double v4, p3

    .line 16
    mul-double/2addr v2, v4

    .line 17
    add-double/2addr v2, v0

    .line 18
    const/4 p3, 0x1

    .line 19
    invoke-virtual {p0, p3, v2, v3}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 20
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 23
    move-result-wide v0

    .line 26
    invoke-direct {p0, p2}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    .line 27
    move-result-wide p1

    .line 30
    sub-double/2addr p1, v0

    .line 31
    mul-double/2addr p1, v4

    .line 32
    add-double/2addr p1, v0

    .line 33
    const/4 p3, 0x2

    .line 34
    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 35
    return-void
    .line 38
.end method
