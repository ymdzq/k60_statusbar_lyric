.class public final Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

.field public final synthetic val$enabled:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;->val$enabled:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "FlashlightController"

    .line 2
    const-string/jumbo v1, "setFlashModeInternal: file writer write: "

    .line 4
    const-string v2, "FileWriter write failed!"

    .line 7
    iget-object v3, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 9
    iget-object v4, v3, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashDevice:Ljava/lang/String;

    .line 11
    iget-boolean v5, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;->val$enabled:Z

    .line 13
    const/4 v6, 0x0

    .line 15
    if-eqz v5, :cond_0

    .line 16
    iget v3, v3, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mValueOn:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move v3, v6

    .line 21
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 25
    invoke-static {v4, v3}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    move-result v3

    .line 29
    if-nez v3, :cond_3

    .line 30
    const/4 v3, 0x0

    .line 32
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    .line 33
    iget-object v5, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 35
    iget-object v5, v5, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashDevice:Ljava/lang/String;

    .line 37
    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget-boolean v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;->val$enabled:Z

    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;->val$enabled:Z

    .line 59
    if-eqz v1, :cond_1

    .line 61
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$4;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 63
    iget v6, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mValueOn:I

    .line 65
    :cond_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {v4, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 74
    goto :goto_4

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    move-object v3, v4

    .line 79
    goto :goto_2

    .line 80
    :catch_0
    move-exception p0

    .line 81
    move-object v3, v4

    .line 82
    goto :goto_1

    .line 83
    :catch_1
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    goto :goto_2

    .line 87
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 103
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    if-eqz v3, :cond_3

    .line 107
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 109
    goto :goto_4

    .line 112
    :catch_2
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    goto :goto_4

    .line 117
    :goto_2
    if-eqz v3, :cond_2

    .line 118
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 120
    goto :goto_3

    .line 123
    :catch_3
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    :cond_2
    :goto_3
    throw p0

    .line 128
    :cond_3
    :goto_4
    return-void
    .line 129
.end method
