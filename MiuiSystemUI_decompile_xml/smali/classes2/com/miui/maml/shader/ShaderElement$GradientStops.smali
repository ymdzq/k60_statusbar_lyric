.class public final Lcom/miui/maml/shader/ShaderElement$GradientStops;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mColors:[I

.field protected mGradientStopArr:Ljava/util/ArrayList;

.field private mPositions:[F

.field final synthetic this$0:Lcom/miui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/shader/ShaderElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->this$0:Lcom/miui/maml/shader/ShaderElement;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public add(Lcom/miui/maml/shader/ShaderElement$GradientStop;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public getColors()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public getPositions()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 2
    move-result v0

    .line 5
    new-array v0, v0, [I

    .line 6
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 10
    move-result v0

    .line 13
    new-array v0, v0, [F

    .line 14
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    .line 16
    return-void
    .line 18
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public update()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 4
    move-result v2

    .line 7
    if-ge v0, v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 15
    check-cast v2, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    .line 16
    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;->getColor()I

    .line 18
    move-result v2

    .line 21
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 22
    aget v4, v3, v0

    .line 24
    const/4 v5, 0x1

    .line 26
    if-eq v2, v4, :cond_0

    .line 27
    move v1, v5

    .line 29
    :cond_0
    aput v2, v3, v0

    .line 30
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 37
    check-cast v2, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    .line 38
    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;->getPosition()F

    .line 40
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    .line 44
    aget v4, v3, v0

    .line 46
    cmpl-float v4, v2, v4

    .line 48
    if-eqz v4, :cond_1

    .line 50
    move v1, v5

    .line 52
    :cond_1
    aput v2, v3, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    if-eqz v1, :cond_3

    .line 58
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->this$0:Lcom/miui/maml/shader/ShaderElement;

    .line 60
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->onGradientStopsChanged()V

    .line 62
    :cond_3
    return-void
    .line 65
.end method
