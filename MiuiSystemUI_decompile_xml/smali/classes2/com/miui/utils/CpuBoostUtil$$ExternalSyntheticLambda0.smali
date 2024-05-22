.class public final synthetic Lcom/miui/utils/CpuBoostUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/utils/CpuBoostUtil$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget p0, p0, Lcom/miui/utils/CpuBoostUtil$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    const-string v0, "CpuBoostUtil"

    .line 4
    const-string v1, "boostCpuToMax:"

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 8
    move-result v2

    .line 11
    invoke-static {v2, p0}, Lcom/mi/mibridge/MiBridge;->requestCpuHighFreq(II)I

    .line 12
    move-result p0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string v1, "boostCpuToMax"

    .line 33
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :goto_0
    return-void
    .line 38
.end method
