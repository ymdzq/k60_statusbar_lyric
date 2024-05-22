.class public Lcom/miui/maml/elements/AdvancedSlider;
.super Lcom/miui/maml/elements/ElementGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final FREE_ENDPOINT_DIST:F = 1.7014117E38f

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_AdvancedSlider"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field private static final NONE_ENDPOINT_DIST:F = 3.4028235E38f

.field public static final SLIDER_STATE_NORMAL:I = 0x0

.field public static final SLIDER_STATE_PRESSED:I = 0x1

.field public static final SLIDER_STATE_REACHED:I = 0x2

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG_NAME:Ljava/lang/String; = "Slider"


# instance fields
.field private mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;

.field protected mIsHaptic:Z

.field private mIsKeepStatusAfterLaunch:Z

.field private mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMoving:Z

.field private mOnLaunchListener:Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;

.field private mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

.field private mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

.field private mStartPointPressed:Z

.field private mStateVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider;->load(Lorg/w3c/dom/Element;)V

    .line 5
    return-void
    .line 8
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/AdvancedSlider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/AdvancedSlider;->cancelMoving()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/AdvancedSlider;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/AdvancedSlider;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$600(Lcom/miui/maml/elements/AdvancedSlider;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/AdvancedSlider;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 2
    return p0
    .line 4
.end method

.method private cancelMoving()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onCancel()V

    .line 5
    return-void
    .line 8
.end method

.method private checkEndPoint(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z
    .locals 3

    .line 1
    iget-wide v0, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 2
    double-to-float v0, v0

    .line 4
    iget-wide v1, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 5
    double-to-float p1, v1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p2, v0, p1, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getState()Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 15
    move-result-object p1

    .line 18
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$State;->Reached:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 19
    if-eq p1, v0, :cond_2

    .line 21
    invoke-virtual {p2, v0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 23
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 42
    if-eq v0, p2, :cond_0

    .line 44
    sget-object v1, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 46
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p2, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider;->onReach(Ljava/lang/String;)V

    .line 54
    :cond_2
    const/4 v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    sget-object p0, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 59
    invoke-virtual {p2, p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 61
    :goto_1
    return v1
    .line 64
.end method

.method private checkTouch(FF)Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;
    .locals 10

    .line 1
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    .line 5
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v2

    .line 13
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 14
    move-object v5, v1

    .line 17
    move v4, v3

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v6

    .line 22
    if-eqz v6, :cond_1

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v6

    .line 28
    check-cast v6, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 29
    invoke-static {v6, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$1000(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;FF)Lcom/miui/maml/util/Utils$Point;

    .line 31
    move-result-object v7

    .line 34
    invoke-virtual {v6, v7, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->getTransformedDist(Lcom/miui/maml/util/Utils$Point;FF)F

    .line 35
    move-result v8

    .line 38
    cmpg-float v9, v8, v4

    .line 39
    if-gez v9, :cond_0

    .line 41
    iput-object v6, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 43
    move-object v5, v7

    .line 45
    move v4, v8

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    cmpg-float p1, v4, v3

    .line 48
    if-gez p1, :cond_9

    .line 50
    iget-wide p1, v5, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 52
    double-to-float p1, p1

    .line 54
    iget-wide v1, v5, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 55
    double-to-float p2, v1

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    .line 58
    const p1, 0x7effffff

    .line 61
    cmpg-float p1, v4, p1

    .line 64
    if-gez p1, :cond_2

    .line 66
    iget-object p1, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 68
    invoke-direct {p0, v5, p1}, Lcom/miui/maml/elements/AdvancedSlider;->checkEndPoint(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z

    .line 70
    move-result p1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object p1

    .line 80
    const/4 p2, 0x0

    .line 81
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 91
    check-cast v1, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 92
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 94
    move-result-object v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    goto :goto_1

    .line 100
    :cond_4
    invoke-direct {p0, v5, v1}, Lcom/miui/maml/elements/AdvancedSlider;->checkEndPoint(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z

    .line 101
    move-result p2

    .line 104
    if-eqz p2, :cond_3

    .line 105
    iput-object v1, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 107
    :cond_5
    move p1, p2

    .line 109
    :goto_2
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 110
    if-eqz p1, :cond_6

    .line 112
    sget-object v1, Lcom/miui/maml/elements/AdvancedSlider$State;->Reached:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 114
    goto :goto_3

    .line 116
    :cond_6
    sget-object v1, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 117
    :goto_3
    invoke-virtual {p2, v1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 119
    iget-boolean p2, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 122
    if-eqz p2, :cond_8

    .line 124
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 126
    if-eqz p1, :cond_7

    .line 128
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 130
    goto :goto_4

    .line 132
    :cond_7
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 133
    :goto_4
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 135
    :cond_8
    iput-boolean p1, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    .line 138
    return-object v0

    .line 140
    :cond_9
    const-string p1, "LockScreen_AdvancedSlider"

    .line 141
    const-string/jumbo p2, "unlock touch canceled due to exceeding tollerance"

    .line 143
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 149
    const-string p1, "cancel"

    .line 151
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 153
    return-object v1
    .line 156
.end method

.method private doLaunch(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 2
    const-string v1, "launch"

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->perform()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object p1, p1, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    .line 24
    move-result p0

    .line 27
    return p0
    .line 28
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 5
    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 16
    const-string v3, ".state"

    .line 18
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 24
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 29
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 32
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 41
    const-string v4, ".move_x"

    .line 43
    invoke-static {v1, v2, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 49
    move-result-object v2

    .line 52
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 53
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 56
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 65
    const-string v4, ".move_y"

    .line 67
    invoke-static {v1, v2, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 73
    move-result-object v2

    .line 76
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 77
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 80
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 89
    const-string v4, ".move_dist"

    .line 91
    invoke-static {v1, v2, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 97
    move-result-object v2

    .line 100
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 101
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 106
    if-eqz v0, :cond_2

    .line 108
    iget-object v0, v0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 110
    if-eqz v0, :cond_2

    .line 112
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;

    .line 117
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    .line 119
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 122
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 124
    invoke-virtual {v1, v0}, Lcom/miui/maml/ScreenElementRoot;->addPreTicker(Lcom/miui/maml/elements/ITicker;)V

    .line 126
    :goto_0
    const-string v0, "haptic"

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 135
    move-result v0

    .line 138
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 139
    const-string v0, "keepStatusAfterLaunch"

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 146
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 147
    move-result p1

    .line 150
    iput-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    .line 151
    return-void
    .line 153
.end method

.method private moveStartPoint(FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 4
    move-result v0

    .line 7
    sub-float/2addr p1, v0

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 9
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 11
    move-result v0

    .line 14
    sub-float/2addr p2, v0

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 18
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 21
    if-eqz v0, :cond_0

    .line 23
    float-to-double v0, p1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 26
    move-result-wide v0

    .line 29
    float-to-double p1, p2

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 31
    move-result-wide p1

    .line 34
    mul-double v2, v0, v0

    .line 35
    mul-double v4, p1, p1

    .line 37
    add-double/2addr v4, v2

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 40
    move-result-wide v2

    .line 43
    iget-object v4, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 44
    invoke-virtual {v4, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 46
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 51
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 54
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 56
    :cond_0
    return-void
    .line 59
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    .line 5
    return-void
    .line 8
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    .line 10
    return-void
    .line 13
.end method

.method public onCancel()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "StartPoint"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 16
    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 18
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 21
    return-object v0

    .line 23
    :cond_0
    const-string v1, "EndPoint"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 32
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 34
    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 36
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 39
    if-nez p1, :cond_1

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v0

    .line 55
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 56
    move-result-object p0

    .line 59
    return-object p0
    .line 60
.end method

.method public onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2, p1}, Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;->onLaunch(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-boolean p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    .line 11
    return p0
    .line 13
.end method

.method public onMove(FF)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onReach(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public onRelease()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    move-result v2

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 18
    move-result v3

    .line 21
    sub-float/2addr v0, v3

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 23
    move-result v3

    .line 26
    sub-float/2addr v2, v3

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 28
    move-result v3

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v3, :cond_9

    .line 33
    if-eq v3, v4, :cond_4

    .line 35
    const/4 v5, 0x2

    .line 37
    if-eq v3, v5, :cond_2

    .line 38
    const/4 v0, 0x3

    .line 40
    if-eq v3, v0, :cond_1

    .line 41
    goto/16 :goto_4

    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 45
    if-eqz v0, :cond_d

    .line 47
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 49
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 52
    iput-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 55
    iput-boolean v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 57
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onRelease()V

    .line 59
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 62
    const-string v2, "cancel"

    .line 64
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 66
    :goto_0
    move v0, v4

    .line 69
    goto/16 :goto_5

    .line 70
    :cond_2
    iget-boolean v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 72
    if-eqz v3, :cond_d

    .line 74
    invoke-direct {p0, v0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->checkTouch(FF)Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;

    .line 76
    move-result-object v3

    .line 79
    if-eqz v3, :cond_3

    .line 80
    iget-object v3, v3, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 82
    iput-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 84
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->onMove(FF)V

    .line 86
    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 90
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 92
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 94
    iput-boolean v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 97
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onRelease()V

    .line 99
    goto :goto_0

    .line 102
    :cond_4
    iget-boolean v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 103
    if-eqz v3, :cond_d

    .line 105
    const-string v3, "LockScreen_AdvancedSlider"

    .line 107
    const-string/jumbo v5, "unlock touch up"

    .line 109
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0, v0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->checkTouch(FF)Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;

    .line 115
    move-result-object v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    iget-boolean v2, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    .line 121
    if-eqz v2, :cond_5

    .line 123
    iget-object v2, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 125
    invoke-direct {p0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->doLaunch(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z

    .line 127
    move-result v2

    .line 130
    goto :goto_1

    .line 131
    :cond_5
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 132
    const-string v3, "release"

    .line 134
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 136
    iget-object v2, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 139
    if-eqz v2, :cond_6

    .line 141
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 143
    :cond_6
    move v2, v1

    .line 146
    :goto_1
    iget-object v0, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 147
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 149
    goto :goto_2

    .line 151
    :cond_7
    move v2, v1

    .line 152
    :goto_2
    iput-boolean v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 153
    if-nez v2, :cond_8

    .line 155
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 157
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 159
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 161
    :cond_8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onRelease()V

    .line 164
    goto :goto_0

    .line 167
    :cond_9
    iget-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 168
    invoke-virtual {v3, v0, v2, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    .line 170
    move-result v3

    .line 173
    if-eqz v3, :cond_d

    .line 174
    iput-boolean v4, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 176
    iget-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 178
    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 180
    move-result v3

    .line 183
    sub-float/2addr v0, v3

    .line 184
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 185
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 187
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 189
    move-result v0

    .line 192
    sub-float/2addr v2, v0

    .line 193
    iput v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 194
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 196
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->isRunning()Z

    .line 198
    move-result v0

    .line 201
    if-eqz v0, :cond_a

    .line 202
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 204
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->stopRunning()V

    .line 206
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 209
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 211
    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    .line 213
    move-result v2

    .line 216
    sub-float/2addr v0, v2

    .line 217
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 218
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 220
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 222
    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    .line 224
    move-result v2

    .line 227
    sub-float/2addr v0, v2

    .line 228
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 229
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 231
    sget-object v2, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 233
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 235
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 240
    move-result-object v0

    .line 243
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    move-result v2

    .line 247
    if-eqz v2, :cond_b

    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    move-result-object v2

    .line 253
    check-cast v2, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 254
    sget-object v3, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 256
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 258
    goto :goto_3

    .line 261
    :cond_b
    iput-boolean v4, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    .line 262
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 264
    if-eqz v0, :cond_c

    .line 266
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 268
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 270
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 272
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 275
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 277
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onStart()V

    .line 280
    goto/16 :goto_0

    .line 283
    :cond_d
    :goto_4
    move v0, v1

    .line 285
    :goto_5
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    .line 286
    move-result p1

    .line 289
    if-nez p1, :cond_e

    .line 290
    if-eqz v0, :cond_f

    .line 292
    iget-boolean p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 294
    if-eqz p0, :cond_f

    .line 296
    :cond_e
    move v1, v4

    .line 298
    :cond_f
    return v1
    .line 299
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    .line 5
    return-void
    .line 8
.end method

.method public reset(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->reset(J)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    .line 5
    return-void
    .line 8
.end method

.method public resetInner()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2, v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 15
    sget-object v2, Lcom/miui/maml/elements/AdvancedSlider$State;->Normal:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 17
    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 37
    check-cast v2, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 38
    sget-object v3, Lcom/miui/maml/elements/AdvancedSlider$State;->Normal:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 40
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    iget-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 46
    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 50
    const-wide/16 v2, 0x0

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 54
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 59
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 64
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 67
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 69
    :cond_1
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 72
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 74
    :cond_2
    return-void
    .line 77
.end method

.method public setOnLaunchListener(Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;

    .line 2
    return-void
    .line 4
.end method
