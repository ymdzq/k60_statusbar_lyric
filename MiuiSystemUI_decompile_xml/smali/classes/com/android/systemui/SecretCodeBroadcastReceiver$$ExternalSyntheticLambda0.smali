.class public final synthetic Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SecretCodeBroadcastReceiver;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SecretCodeBroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/SecretCodeBroadcastReceiver;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/SecretCodeBroadcastReceiver;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    sget v1, Lcom/android/systemui/SecretCodeBroadcastReceiver;->$r8$clinit:I

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Ljava/io/File;

    .line 11
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 13
    move-result-object v2

    .line 16
    const-string v3, "/MIUI/SysUI/"

    .line 17
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 22
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 28
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 31
    const-string/jumbo v3, "sysui.hprof"

    .line 33
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 45
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    iget-object v0, v0, Lcom/android/systemui/SecretCodeBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v1, Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda1;

    .line 57
    invoke-direct {v1, p0}, Lcom/android/systemui/SecretCodeBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
    .line 65
.end method
