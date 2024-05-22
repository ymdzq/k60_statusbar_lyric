.class public Lcom/miui/maml/SoundManager$SoundOptions;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
