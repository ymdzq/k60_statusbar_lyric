.class public Lmiuix/animation/internal/AnimInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public volatile delay:J

.field public volatile initTime:J

.field public volatile justEnd:Z

.field public volatile op:B

.field public volatile progress:D

.field public volatile setToValue:D

.field public volatile startTime:J

.field public volatile startValue:D

.field public volatile targetValue:D

.field public volatile tintMode:I

.field public volatile value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 6
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 8
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 13
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 15
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 17
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->delay:J

    .line 7
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->initTime:J

    .line 9
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->startTime:J

    .line 11
    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->progress:D

    .line 15
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 18
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 20
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 25
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 27
    iput-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 29
    iput-boolean v0, p0, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 31
    return-void
    .line 33
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "AnimInfo{op="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-byte v1, p0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", delay = "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->delay:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", initTime="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->initTime:J

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", startTime="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->startTime:J

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", progress="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->progress:D

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", config="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", startValue="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", targetValue="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", value="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", setToValue="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-wide v1, p0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 101
    const/16 p0, 0x7d

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 112
    return-object p0
    .line 113
.end method
