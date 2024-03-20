.class public Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;
.super Ljava/lang/Object;
.source "SplitBriefInfo.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final ALREADY_INSTALLED:I = 0x2

.field public static final FIRST_INSTALLED:I = 0x1

.field public static final UNKNOWN:I


# instance fields
.field public final builtIn:Z

.field private installFlag:I

.field public final splitName:Ljava/lang/String;

.field private timeCost:J

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 47
    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->timeCost:J

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->installFlag:I

    .line 53
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->version:Ljava/lang/String;

    .line 55
    iput-boolean p3, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->builtIn:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 80
    instance-of v0, p1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    .line 84
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    iget-object v2, v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->version:Ljava/lang/String;

    iget-object v2, v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->version:Ljava/lang/String;

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->builtIn:Z

    iget-boolean v0, v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->builtIn:Z

    if-ne v1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 89
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getInstallFlag()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->installFlag:I

    return p0
.end method

.method public getTimeCost()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->timeCost:J

    return-wide v0
.end method

.method public setInstallFlag(I)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;
    .locals 0

    .line 64
    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->installFlag:I

    return-object p0
.end method

.method public setTimeCost(J)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->timeCost:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"splitName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"version\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"builtIn\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->builtIn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
