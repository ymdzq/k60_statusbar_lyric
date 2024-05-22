.class public abstract Lcom/android/systemui/statusbar/policy/dagger/StatusBarPolicyModule_ProvideAutoRotateSettingsManagerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideAutoRotateSettingsManager(Landroid/content/Context;)Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;
    .locals 3

    .line 1
    const-class v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    .line 5
    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/settingslib/devicestate/AndroidSecureSettings;

    .line 17
    invoke-direct {v2, v1}, Lcom/android/settingslib/devicestate/AndroidSecureSettings;-><init>(Landroid/content/ContentResolver;)V

    .line 19
    new-instance v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    .line 22
    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/devicestate/SecureSettings;)V

    .line 24
    sput-object v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    .line 27
    :cond_0
    sget-object p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    .line 31
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 32
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0

    .line 37
    throw p0
    .line 38
.end method
