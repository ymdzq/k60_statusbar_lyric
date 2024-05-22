.class public Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;
.super Lmiuix/animation/utils/EaseManager$EaseStyle;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public duration:J


# direct methods
.method public varargs constructor <init>(I[F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 2
    const-wide/16 p1, 0x12c

    .line 5
    iput-wide p1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    .line 2
    return-object p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "InterpolateEaseStyle{style="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", duration="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", factors="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    .line 29
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const/16 p0, 0x7d

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    return-object p0
    .line 47
.end method
