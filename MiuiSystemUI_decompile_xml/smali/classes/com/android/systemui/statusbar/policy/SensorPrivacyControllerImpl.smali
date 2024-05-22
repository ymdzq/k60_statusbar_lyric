.class public final Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public mSensorPrivacyEnabled:Z

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorPrivacyManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    .line 14
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 16
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {v2, p1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;Z)V

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
    .line 32
.end method

.method public final onAllSensorPrivacyChanged(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    .line 25
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    .line 27
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 29
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5$$ExternalSyntheticLambda0;

    .line 33
    invoke-direct {v4, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;Z)V

    .line 35
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
    .line 46
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
    .line 18
.end method
