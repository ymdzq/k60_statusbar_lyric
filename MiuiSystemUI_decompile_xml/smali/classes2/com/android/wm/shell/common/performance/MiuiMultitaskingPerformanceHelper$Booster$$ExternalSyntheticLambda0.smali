.class public final synthetic Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;

    .line 2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->canEnd:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mName:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "/"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mTryEndActionType:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 31
    return-void
    .line 34
.end method
