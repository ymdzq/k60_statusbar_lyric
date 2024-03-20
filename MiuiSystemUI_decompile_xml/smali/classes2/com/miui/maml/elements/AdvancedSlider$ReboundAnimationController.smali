.class abstract Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/elements/ITicker;


# instance fields
.field private mBounceStartPointIndex:I

.field private mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

.field private mPreDistance:J

.field protected mStartTime:J

.field private mStartX:F

.field private mStartY:F

.field protected mTotalDistance:D

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;
    .locals 4

    .line 1
    new-instance p0, Lcom/miui/maml/util/Utils$Point;

    .line 2
    float-to-double v0, p1

    .line 4
    float-to-double p1, p2

    .line 5
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 6
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    .line 9
    float-to-double p2, p3

    .line 11
    float-to-double v0, p4

    .line 12
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 13
    const/4 p2, 0x1

    .line 16
    invoke-static {p0, p1, p2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 17
    move-result-wide p2

    .line 20
    long-to-double p4, p5

    .line 21
    cmpl-double p6, p4, p2

    .line 22
    if-ltz p6, :cond_0

    .line 24
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_0
    sub-double p4, p2, p4

    .line 28
    div-double/2addr p4, p2

    .line 30
    iget-wide p2, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 31
    iget-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 33
    sub-double/2addr p2, v0

    .line 35
    mul-double/2addr p2, p4

    .line 36
    iget-wide v2, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 37
    iget-wide p0, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 39
    sub-double/2addr v2, p0

    .line 41
    mul-double/2addr v2, p4

    .line 42
    new-instance p4, Lcom/miui/maml/util/Utils$Point;

    .line 43
    add-double/2addr v0, p2

    .line 45
    add-double/2addr p0, v2

    .line 46
    invoke-direct {p4, v0, v1, p0, p1}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 47
    return-object p4
    .line 50
.end method


# virtual methods
.method public abstract getDistance(J)J
.end method

.method public init()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 4
    return-void
    .line 6
.end method

.method public isRunning()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long p0, v0, v2

    .line 6
    if-ltz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public onMove(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 2
    invoke-static {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->access$300(Lcom/miui/maml/elements/AdvancedSlider;FF)V

    .line 4
    return-void
    .line 7
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onStop()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 6
    invoke-static {p0}, Lcom/miui/maml/elements/AdvancedSlider;->access$200(Lcom/miui/maml/elements/AdvancedSlider;)V

    .line 8
    return-void
    .line 11
.end method

.method public start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 4
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 8
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 18
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 24
    move-result v1

    .line 27
    add-float/2addr v0, v1

    .line 28
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 29
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 31
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    .line 37
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 41
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 47
    move-result v1

    .line 50
    add-float/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    .line 52
    const/4 v1, -0x1

    .line 54
    iput v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 55
    const-wide/16 v1, 0x0

    .line 57
    iput-wide v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 59
    new-instance v1, Lcom/miui/maml/util/Utils$Point;

    .line 61
    iget v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 63
    float-to-double v2, v2

    .line 65
    float-to-double v4, v0

    .line 66
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 67
    const/4 v0, 0x1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 73
    move-result-object v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    move v2, v0

    .line 79
    :goto_0
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 80
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v3

    .line 87
    if-ge v2, v3, :cond_2

    .line 88
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 90
    move-result-object v3

    .line 93
    add-int/lit8 v4, v2, -0x1

    .line 94
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 99
    check-cast v3, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 100
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 102
    move-result-object v5

    .line 105
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v5

    .line 109
    check-cast v5, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 110
    new-instance v6, Lcom/miui/maml/util/Utils$Point;

    .line 112
    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 114
    move-result v7

    .line 117
    float-to-double v7, v7

    .line 118
    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 119
    move-result v3

    .line 122
    float-to-double v9, v3

    .line 123
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 124
    new-instance v3, Lcom/miui/maml/util/Utils$Point;

    .line 127
    invoke-virtual {v5}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 129
    move-result v7

    .line 132
    float-to-double v7, v7

    .line 133
    invoke-virtual {v5}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 134
    move-result v5

    .line 137
    float-to-double v9, v5

    .line 138
    invoke-direct {v3, v7, v8, v9, v10}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 139
    const/4 v5, 0x0

    .line 142
    invoke-static {v6, v3, v1, v5}, Lcom/miui/maml/util/Utils;->pointProjectionOnSegment(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)Lcom/miui/maml/util/Utils$Point;

    .line 143
    move-result-object v5

    .line 146
    if-eqz v5, :cond_0

    .line 147
    iput v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 149
    iget-wide v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 151
    invoke-static {v6, v5, v0}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 153
    move-result-wide v3

    .line 156
    add-double/2addr v3, v1

    .line 157
    iput-wide v3, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 158
    goto :goto_1

    .line 160
    :cond_0
    iget-wide v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 161
    invoke-static {v6, v3, v0}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 163
    move-result-wide v6

    .line 166
    add-double/2addr v6, v4

    .line 167
    iput-wide v6, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 170
    goto :goto_0

    .line 172
    :cond_1
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    .line 173
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 175
    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 177
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 181
    move-result v2

    .line 184
    float-to-double v2, v2

    .line 185
    iget-object v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 186
    invoke-static {v4}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 188
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 192
    move-result v4

    .line 195
    float-to-double v4, v4

    .line 196
    invoke-direct {p1, v2, v3, v4, v5}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 197
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 200
    move-result-wide v0

    .line 203
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 204
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 206
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 208
    cmpg-double p1, v0, v2

    .line 210
    if-gez p1, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 214
    return-void

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStart()V

    .line 218
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 221
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 223
    return-void
    .line 226
.end method

.method public stopRunning()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 4
    return-void
    .line 6
.end method

.method public tick(J)V
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v4, v0, v2

    .line 6
    if-gez v4, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    cmp-long v4, v0, v2

    .line 11
    if-nez v4, :cond_1

    .line 13
    iput-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 15
    iput-wide v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 17
    goto/16 :goto_3

    .line 19
    :cond_1
    sub-long/2addr p1, v0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getDistance(J)J

    .line 22
    move-result-wide p1

    .line 25
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 26
    cmp-long v0, v0, v2

    .line 28
    if-gez v0, :cond_2

    .line 30
    return-void

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 33
    if-eqz v0, :cond_6

    .line 35
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 37
    move-result-object v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    goto/16 :goto_1

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 45
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    .line 51
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 55
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 57
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 61
    move-result v1

    .line 64
    add-float/2addr v0, v1

    .line 65
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 66
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 68
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    .line 72
    move-result v1

    .line 75
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 76
    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 78
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 82
    move-result v2

    .line 85
    add-float/2addr v1, v2

    .line 86
    iget-wide v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 87
    sub-long v2, p1, v2

    .line 89
    iget v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 91
    :goto_0
    if-ltz v4, :cond_8

    .line 93
    iget-object v5, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 95
    invoke-static {v5}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 97
    move-result-object v5

    .line 100
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v5

    .line 104
    move-object v12, v5

    .line 105
    check-cast v12, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 106
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 108
    move-result v6

    .line 111
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 112
    move-result v7

    .line 115
    move-object v5, p0

    .line 116
    move v8, v0

    .line 117
    move v9, v1

    .line 118
    move-wide v10, v2

    .line 119
    invoke-direct/range {v5 .. v11}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;

    .line 120
    move-result-object v5

    .line 123
    if-nez v5, :cond_5

    .line 124
    if-nez v4, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 128
    goto :goto_2

    .line 131
    :cond_4
    new-instance v5, Lcom/miui/maml/util/Utils$Point;

    .line 132
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 134
    move-result v6

    .line 137
    float-to-double v6, v6

    .line 138
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 139
    move-result v8

    .line 142
    float-to-double v8, v8

    .line 143
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 144
    new-instance v6, Lcom/miui/maml/util/Utils$Point;

    .line 147
    float-to-double v7, v0

    .line 149
    float-to-double v0, v1

    .line 150
    invoke-direct {v6, v7, v8, v0, v1}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 151
    long-to-double v0, v2

    .line 154
    const/4 v2, 0x1

    .line 155
    invoke-static {v5, v6, v2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 156
    move-result-wide v2

    .line 159
    sub-double/2addr v0, v2

    .line 160
    double-to-long v2, v0

    .line 161
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 162
    move-result v0

    .line 165
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 166
    move-result v1

    .line 169
    add-int/lit8 v4, v4, -0x1

    .line 170
    goto :goto_0

    .line 172
    :cond_5
    iput v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 173
    iget-wide v0, v5, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 175
    double-to-float v0, v0

    .line 177
    iget-wide v1, v5, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 178
    double-to-float v1, v1

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    .line 181
    goto :goto_2

    .line 184
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 185
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 187
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 191
    move-result v5

    .line 194
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 195
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 197
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 201
    move-result v6

    .line 204
    iget v7, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 205
    iget v8, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    .line 207
    move-object v4, p0

    .line 209
    move-wide v9, p1

    .line 210
    invoke-direct/range {v4 .. v10}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;

    .line 211
    move-result-object v0

    .line 214
    if-nez v0, :cond_7

    .line 215
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 217
    goto :goto_2

    .line 220
    :cond_7
    iget-wide v1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 221
    double-to-float v1, v1

    .line 223
    iget-wide v2, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 224
    double-to-float v0, v2

    .line 226
    invoke-virtual {p0, v1, v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    .line 227
    :cond_8
    :goto_2
    iput-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 230
    :goto_3
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 232
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 234
    return-void
    .line 237
.end method
