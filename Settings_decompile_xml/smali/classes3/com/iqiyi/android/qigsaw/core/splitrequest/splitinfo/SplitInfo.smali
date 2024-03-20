.class public Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;
.super Ljava/lang/Object;
.source "SplitInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;,
        Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;
    }
.end annotation


# instance fields
.field private final apkDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;",
            ">;"
        }
    .end annotation
.end field

.field private final appVersion:Ljava/lang/String;

.field private final builtIn:Z

.field private final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dexNumber:I

.field private final isMultiDex:Z

.field private final libDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;",
            ">;"
        }
    .end annotation
.end field

.field private final minSdkVersion:I

.field private primaryApkDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;",
            ">;"
        }
    .end annotation
.end field

.field private primaryLibData:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;",
            ">;"
        }
    .end annotation
.end field

.field private final splitName:Ljava/lang/String;

.field private final splitVersion:Ljava/lang/String;

.field private final workProcesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitName:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->appVersion:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitVersion:Ljava/lang/String;

    .line 84
    iput-boolean p4, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->builtIn:Z

    .line 85
    iput p5, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->minSdkVersion:I

    const/4 p1, 0x1

    if-le p6, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 86
    :goto_0
    iput-boolean p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isMultiDex:Z

    .line 87
    iput p6, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->dexNumber:I

    .line 88
    iput-object p7, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->workProcesses:Ljava/util/List;

    .line 89
    iput-object p8, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->dependencies:Ljava/util/List;

    .line 90
    iput-object p9, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->apkDataList:Ljava/util/List;

    .line 91
    iput-object p10, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->libDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getApkDataForMaster()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->apkDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;

    .line 143
    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->-$$Nest$fgetabi(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "master"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find master apk for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getApkDataList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryApkDataList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 100
    monitor-exit p0

    return-object v0

    .line 102
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryApkDataList:Ljava/util/List;

    .line 103
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getPrimaryLibData(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->apkDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;

    .line 105
    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->-$$Nest$fgetabi(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "master"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryApkDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_1

    .line 108
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;->-$$Nest$fgetabi(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->-$$Nest$fgetabi(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryApkDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    .line 112
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryApkDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    goto :goto_1

    .line 113
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find split config apk for abi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;->-$$Nest$fgetabi(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryApkDataList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getApkTotalSize(Landroid/content/Context;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getApkDataList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;

    .line 136
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->-$$Nest$fgetsize(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->dependencies:Ljava/util/List;

    return-object p0
.end method

.method public getMinSdkVersion()I
    .locals 0

    .line 201
    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->minSdkVersion:I

    return p0
.end method

.method public getPrimaryLibData(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;

    return-object p0

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/common/AbiUtil;->getBasePrimaryAbi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->libDataList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 167
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->libDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;

    .line 169
    invoke-static {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;->-$$Nest$fgetabi(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_2
    invoke-static {p1, v0}, Lcom/iqiyi/android/qigsaw/core/common/AbiUtil;->findSplitPrimaryAbi(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 175
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->libDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;

    .line 176
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;->-$$Nest$fgetabi(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    :cond_4
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;

    return-object p0

    .line 173
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No supported abi for split "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSplitName()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitName:Ljava/lang/String;

    return-object p0
.end method

.method public getSplitVersion()Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getWorkProcesses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->workProcesses:Ljava/util/List;

    return-object p0
.end method

.method public hasDex()Z
    .locals 0

    .line 193
    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->dexNumber:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBuiltIn()Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->builtIn:Z

    return p0
.end method

.method public isMultiDex()Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isMultiDex:Z

    return p0
.end method

.method public obtainInstalledMark(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getApkDataList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;

    .line 123
    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->getAbi()Ljava/lang/String;

    move-result-object v3

    const-string v4, "master"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->-$$Nest$fgetmd5(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->-$$Nest$fgetsize(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;)J

    move-result-wide v0

    goto :goto_0

    .line 129
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
