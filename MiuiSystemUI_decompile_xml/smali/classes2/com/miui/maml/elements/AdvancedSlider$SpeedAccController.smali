.class Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;
.super Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mBounceAccelation:I

.field private mBounceAccelationExp:Lcom/miui/maml/data/Expression;

.field private mBounceInitSpeed:I

.field private mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

.field private mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    .line 5
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v0

    .line 11
    const-string v1, "bounceInitSpeed"

    .line 12
    invoke-virtual {p1, p2, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 18
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    .line 22
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 24
    move-result-object v0

    .line 27
    const-string v1, "bounceAcceleration"

    .line 28
    invoke-virtual {p1, p2, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 33
    invoke-static {v0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 34
    move-result-object p2

    .line 37
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lcom/miui/maml/data/Expression;

    .line 38
    iget-boolean p2, p1, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 40
    if-eqz p2, :cond_0

    .line 42
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v1, p1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 51
    const-string v2, ".bounce_progress"

    .line 53
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 59
    move-result-object p1

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 64
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 67
    :cond_0
    return-void
    .line 69
.end method


# virtual methods
.method public getDistance(J)J
    .locals 10

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    .line 2
    int-to-long v1, v0

    .line 4
    mul-long/2addr v1, p1

    .line 5
    const-wide/16 v3, 0x3e8

    .line 6
    div-long/2addr v1, v3

    .line 8
    iget v5, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    .line 9
    int-to-long v6, v5

    .line 11
    mul-long/2addr v6, p1

    .line 12
    mul-long/2addr v6, p1

    .line 13
    const-wide/32 v8, 0x1e8480

    .line 14
    div-long/2addr v6, v8

    .line 17
    add-long/2addr v6, v1

    .line 18
    int-to-long v0, v0

    .line 19
    int-to-long v8, v5

    .line 20
    mul-long/2addr v8, p1

    .line 21
    div-long/2addr v8, v3

    .line 22
    add-long/2addr v8, v0

    .line 23
    const-wide/16 p1, 0x0

    .line 24
    cmp-long p1, v8, p1

    .line 26
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 28
    if-gtz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 32
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 39
    :cond_0
    iget-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 42
    const-wide/16 v2, 0x0

    .line 44
    cmpl-double v2, p1, v2

    .line 46
    if-lez v2, :cond_2

    .line 48
    long-to-double v2, v6

    .line 50
    div-double/2addr v2, p1

    .line 51
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 52
    if-eqz p0, :cond_2

    .line 54
    cmpl-double p1, v2, v0

    .line 56
    if-lez p1, :cond_1

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    move-wide v0, v2

    .line 61
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 62
    :cond_2
    return-wide v6
    .line 65
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 6
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 8
    move-result-wide v0

    .line 11
    double-to-int v0, v0

    .line 12
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lcom/miui/maml/data/Expression;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 19
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 21
    move-result-wide v0

    .line 24
    double-to-int v0, v0

    .line 25
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 28
    if-eqz p0, :cond_2

    .line 30
    const-wide/16 v0, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 34
    :cond_2
    return-void
    .line 37
.end method

.method public start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 10
    :goto_0
    return-void
    .line 13
.end method
