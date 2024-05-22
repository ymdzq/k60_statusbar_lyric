.class public final synthetic Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SystemUIApplication;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIApplication;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/SystemUIApplication;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/SystemUIApplication;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    .line 6
    array-length v1, v0

    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string v3, "loading: "

    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    const-string v3, "SystemUIService"

    .line 25
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v3, ".newInstance()"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 52
    const-wide/16 v3, 0x1000

    .line 53
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 55
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 65
    check-cast p0, Lcom/android/systemui/CoreStartable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 68
    invoke-static {p0}, Lcom/android/systemui/SystemUIApplication;->startStartable(Lcom/android/systemui/CoreStartable;)V

    .line 71
    aput-object p0, v0, v1

    .line 74
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 80
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 86
    throw p0
    .line 89
.end method
