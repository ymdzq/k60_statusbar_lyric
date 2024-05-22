.class Lmiuix/animation/internal/AnimStats;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/utils/ObjectPool$IPoolObject;


# instance fields
.field public animCount:I

.field public cancelCount:I

.field public endCount:I

.field public failCount:I

.field public initCount:I

.field public startCount:I

.field public updateCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lmiuix/animation/internal/AnimStats;)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 2
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 4
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 7
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 9
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 11
    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 14
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 16
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 18
    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 21
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 23
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 25
    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 28
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 30
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 32
    add-int/2addr v0, v1

    .line 34
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 35
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 37
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 39
    add-int/2addr v0, v1

    .line 41
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 42
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 44
    iget p1, p1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 46
    add-int/2addr v0, p1

    .line 48
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 49
    return-void
    .line 51
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 3
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 5
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 7
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 9
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 11
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 13
    iput v0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 15
    return-void
    .line 17
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    iget v0, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 8
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 10
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 13
    add-int/2addr v0, v1

    .line 15
    iget p0, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 16
    if-ge v0, p0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
    .line 24
.end method

.method public isStarted()Z
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 2
    if-lez p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "AnimStats{animCount = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->animCount:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", startCount="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", startedCount = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", failCount="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", updateCount="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", cancelCount="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", endCount="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget p0, p0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 69
    const/16 v1, 0x7d

    .line 71
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    return-object p0
    .line 77
.end method
