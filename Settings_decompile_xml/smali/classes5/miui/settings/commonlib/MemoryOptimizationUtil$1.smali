.class Lmiui/settings/commonlib/MemoryOptimizationUtil$1;
.super Ljava/lang/Object;
.source "MemoryOptimizationUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/settings/commonlib/MemoryOptimizationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/settings/commonlib/MemoryOptimizationUtil;


# direct methods
.method constructor <init>(Lmiui/settings/commonlib/MemoryOptimizationUtil;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lmiui/settings/commonlib/MemoryOptimizationUtil$1;->this$0:Lmiui/settings/commonlib/MemoryOptimizationUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "MemoryOptimizationService"

    const-string p1, "MemoryOptimization onBindingDied"

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "MemoryOptimizationService"

    const-string p1, "MemoryOptimization onNullBinding"

    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lmiui/settings/commonlib/MemoryOptimizationUtil$1;->this$0:Lmiui/settings/commonlib/MemoryOptimizationUtil;

    invoke-static {p2}, Lcom/android/settings/services/IMemoryOptimizationInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/services/IMemoryOptimizationInterface;

    move-result-object p1

    invoke-static {p0, p1}, Lmiui/settings/commonlib/MemoryOptimizationUtil;->access$002(Lmiui/settings/commonlib/MemoryOptimizationUtil;Lcom/android/settings/services/IMemoryOptimizationInterface;)Lcom/android/settings/services/IMemoryOptimizationInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "MemoryOptimizationService"

    const-string p1, "MemoryOptimization onServiceDisconnected"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
