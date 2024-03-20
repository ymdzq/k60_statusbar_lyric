.class public Lcom/miui/maml/util/Utils$Point;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 5
    iput-wide p3, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public Offset(Lcom/miui/maml/util/Utils$Point;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 2
    iget-wide v2, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 4
    add-double/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 7
    iget-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 9
    iget-wide v2, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 11
    add-double/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 14
    return-void
    .line 16
.end method

.method public minus(Lcom/miui/maml/util/Utils$Point;)Lcom/miui/maml/util/Utils$Point;
    .locals 5

    .line 1
    new-instance v0, Lcom/miui/maml/util/Utils$Point;

    .line 2
    iget-wide v1, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 4
    iget-wide v3, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 6
    sub-double/2addr v1, v3

    .line 8
    iget-wide v3, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 9
    iget-wide p0, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 11
    sub-double/2addr v3, p0

    .line 13
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 14
    return-object v0
    .line 17
.end method
