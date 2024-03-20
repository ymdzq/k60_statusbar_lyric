.class public Lcom/miui/maml/SoundManager$SoundOptions;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mKeepCur:Z

.field public mLoop:Z

.field public mVolume:F


# direct methods
.method public constructor <init>(ZZF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    .line 5
    iput-boolean p2, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mLoop:Z

    .line 7
    const/4 p1, 0x0

    .line 9
    cmpg-float p2, p3, p1

    .line 10
    if-gez p2, :cond_0

    .line 12
    iput p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    cmpl-float p2, p3, p1

    .line 19
    if-lez p2, :cond_1

    .line 21
    iput p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    iput p3, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    .line 26
    :goto_0
    return-void
    .line 28
.end method
