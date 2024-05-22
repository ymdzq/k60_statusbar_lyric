.class public final Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyConfig$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFlagLocationChanged(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 7
    iget-boolean v2, v1, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 9
    iput-boolean v2, p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    .line 11
    iget-boolean v1, v1, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 13
    iput-boolean v1, p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->setListeningStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V

    .line 23
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    .line 28
    throw p0
    .line 29
.end method

.method public final onFlagMicCameraChanged(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 7
    iget-boolean v2, v1, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 9
    iput-boolean v2, p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    .line 11
    iget-boolean v1, v1, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 13
    iput-boolean v1, p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->setListeningStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V

    .line 23
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    .line 28
    throw p0
    .line 29
.end method
