.class Lcom/miui/maml/elements/AdvancedSlider$EndPoint;
.super Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field public mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

.field private mPath:Ljava/util/ArrayList;

.field private mPathX:Lcom/miui/maml/data/Expression;

.field private mPathY:Lcom/miui/maml/data/Expression;

.field private mRawTolerance:I

.field private mTolerance:F

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 2
    const-string v0, "EndPoint"

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V

    .line 6
    const/16 p1, 0x96

    .line 9
    iput p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 11
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->load(Lorg/w3c/dom/Element;)V

    .line 13
    return-void
    .line 16
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$1000(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;FF)Lcom/miui/maml/util/Utils$Point;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lcom/miui/maml/util/Utils$Point;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private getNearestPoint(FF)Lcom/miui/maml/util/Utils$Point;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 3
    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/miui/maml/util/Utils$Point;

    .line 7
    iget-object v2, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 9
    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$600(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 11
    move-result v2

    .line 14
    sub-float v2, p1, v2

    .line 15
    float-to-double v2, v2

    .line 17
    iget-object v0, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 18
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$700(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 20
    move-result v0

    .line 23
    sub-float v0, p2, v0

    .line 24
    float-to-double v4, v0

    .line 26
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 27
    return-object v1

    .line 30
    :cond_0
    const/4 v1, 0x1

    .line 31
    const/4 v2, 0x0

    .line 32
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 33
    move v5, v1

    .line 38
    :goto_0
    iget-object v6, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v6

    .line 44
    if-ge v5, v6, :cond_2

    .line 45
    iget-object v6, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 47
    invoke-static {v6}, Lcom/miui/maml/elements/AdvancedSlider;->access$600(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 49
    move-result v6

    .line 52
    sub-float v6, p1, v6

    .line 53
    iget-object v7, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 55
    invoke-static {v7}, Lcom/miui/maml/elements/AdvancedSlider;->access$700(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 57
    move-result v7

    .line 60
    sub-float v7, p2, v7

    .line 61
    iget-object v8, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 63
    add-int/lit8 v9, v5, -0x1

    .line 65
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v8

    .line 70
    check-cast v8, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 71
    iget-object v9, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v9

    .line 78
    check-cast v9, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 79
    new-instance v10, Lcom/miui/maml/util/Utils$Point;

    .line 81
    invoke-virtual {v8}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 83
    move-result v11

    .line 86
    float-to-double v11, v11

    .line 87
    invoke-virtual {v8}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 88
    move-result v8

    .line 91
    float-to-double v13, v8

    .line 92
    invoke-direct {v10, v11, v12, v13, v14}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 93
    new-instance v8, Lcom/miui/maml/util/Utils$Point;

    .line 96
    invoke-virtual {v9}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 98
    move-result v11

    .line 101
    float-to-double v11, v11

    .line 102
    invoke-virtual {v9}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 103
    move-result v9

    .line 106
    float-to-double v13, v9

    .line 107
    invoke-direct {v8, v11, v12, v13, v14}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 108
    new-instance v9, Lcom/miui/maml/util/Utils$Point;

    .line 111
    float-to-double v11, v6

    .line 113
    float-to-double v6, v7

    .line 114
    invoke-direct {v9, v11, v12, v6, v7}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 115
    invoke-static {v10, v8, v9, v1}, Lcom/miui/maml/util/Utils;->pointProjectionOnSegment(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)Lcom/miui/maml/util/Utils$Point;

    .line 118
    move-result-object v6

    .line 121
    const/4 v7, 0x0

    .line 122
    invoke-static {v6, v9, v7}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 123
    move-result-wide v7

    .line 126
    cmpg-double v9, v7, v3

    .line 127
    if-gez v9, :cond_1

    .line 129
    move-object v2, v6

    .line 131
    move-wide v3, v7

    .line 132
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 133
    goto :goto_0

    .line 135
    :cond_2
    return-object v2
    .line 136
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    .line 5
    return-void
    .line 8
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .locals 10

    .line 1
    const-string v0, "Path"

    .line 2
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 4
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 11
    return-void

    .line 13
    :cond_0
    const-string/jumbo v0, "tolerance"

    .line 14
    const/16 v1, 0x96

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 22
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 32
    move-result-object v0

    .line 35
    const-string/jumbo v1, "x"

    .line 36
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 43
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lcom/miui/maml/data/Expression;

    .line 47
    const-string/jumbo v1, "y"

    .line 49
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 56
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lcom/miui/maml/data/Expression;

    .line 60
    const-string v1, "Position"

    .line 62
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 64
    move-result-object p1

    .line 67
    const/4 v1, 0x0

    .line 68
    move v7, v1

    .line 69
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 70
    move-result v1

    .line 73
    if-ge v7, v1, :cond_1

    .line 74
    invoke-interface {p1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 76
    move-result-object v1

    .line 79
    move-object v4, v1

    .line 80
    check-cast v4, Lorg/w3c/dom/Element;

    .line 81
    iget-object v8, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 83
    new-instance v9, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 85
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 87
    iget-object v5, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lcom/miui/maml/data/Expression;

    .line 89
    iget-object v6, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lcom/miui/maml/data/Expression;

    .line 91
    move-object v1, v9

    .line 93
    move-object v3, v0

    .line 94
    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/elements/AdvancedSlider$Position;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    .line 95
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v7, v7, 0x1

    .line 101
    goto :goto_0

    .line 103
    :cond_1
    return-void
    .line 104
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .locals 5

    .line 1
    const-string v0, "Intent"

    .line 2
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "Command"

    .line 8
    invoke-static {p1, v1}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "Trigger"

    .line 14
    invoke-static {p1, v2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 16
    move-result-object p1

    .line 19
    if-nez v0, :cond_0

    .line 20
    if-nez v1, :cond_0

    .line 22
    if-nez p1, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    new-instance v2, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 27
    iget-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 29
    const/4 v4, 0x0

    .line 31
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    .line 32
    iput-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 35
    if-eqz v0, :cond_1

    .line 37
    new-instance p1, Lcom/miui/maml/util/IntentInfo;

    .line 39
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 41
    move-result-object p0

    .line 44
    invoke-direct {p1, v0, p0}, Lcom/miui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 45
    iput-object p1, v2, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    if-eqz v1, :cond_2

    .line 51
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 53
    invoke-static {v1, p1}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    .line 55
    move-result-object p1

    .line 58
    iput-object p1, v2, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 59
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 61
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 63
    if-nez p0, :cond_3

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    const-string p1, "invalid Command element: "

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    const-string p1, "LockScreen_AdvancedSlider"

    .line 85
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    if-eqz p1, :cond_3

    .line 91
    new-instance v0, Lcom/miui/maml/CommandTrigger;

    .line 93
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 95
    invoke-direct {v0, p1, p0}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 97
    iput-object v0, v2, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 100
    :cond_3
    :goto_0
    return-void
    .line 102
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->finish()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public getTransformedDist(Lcom/miui/maml/util/Utils$Point;FF)F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const p0, 0x7effffff

    .line 6
    return p0

    .line 9
    :cond_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 10
    if-nez p1, :cond_1

    .line 13
    return v0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 16
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$600(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 18
    move-result v1

    .line 21
    sub-float/2addr p2, v1

    .line 22
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 23
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$700(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 25
    move-result v1

    .line 28
    sub-float/2addr p3, v1

    .line 29
    new-instance v1, Lcom/miui/maml/util/Utils$Point;

    .line 30
    float-to-double v2, p2

    .line 32
    float-to-double p2, p3

    .line 33
    invoke-direct {v1, v2, v3, p2, p3}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 34
    const/4 p2, 0x1

    .line 37
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 38
    move-result-wide p1

    .line 41
    double-to-float p1, p1

    .line 42
    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    .line 43
    cmpg-float p0, p1, p0

    .line 45
    if-gez p0, :cond_2

    .line 47
    return p1

    .line 49
    :cond_2
    return v0
    .line 50
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->init()V

    .line 9
    :cond_0
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 12
    int-to-double v0, v0

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 15
    move-result v0

    .line 18
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    .line 19
    return-void
    .line 21
.end method

.method public onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$State;->Invalid:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$1;->$SwitchMap$com$miui$maml$elements$AdvancedSlider$State:[I

    .line 7
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedSound:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    .line 23
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 26
    return-void
    .line 29
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->pause()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public resume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->resume()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->resume()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method
