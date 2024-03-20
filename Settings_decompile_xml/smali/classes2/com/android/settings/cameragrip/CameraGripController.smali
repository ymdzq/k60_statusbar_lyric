.class public Lcom/android/settings/cameragrip/CameraGripController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CameraGripController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;
    }
.end annotation


# static fields
.field public static final HANDLE_STATE_CONNECTED:I = 0x1

.field public static final HANDLE_STATE_DISCONNECTED:I = 0x0

.field public static final IS_SHOW_CAMERA_GRIP:Ljava/lang/String; = "is_show_camera_grip"

.field public static final KEY_CAMERA_GRIP_SETTINGS:Ljava/lang/String; = "camera_grip_settings"

.field private static final TAG:Ljava/lang/String; = "CameraGripController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;

.field private final mSettingsObserver:Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/cameragrip/CameraGripController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/cameragrip/CameraGripController;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    new-instance p2, Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;

    invoke-direct {p2, p0}, Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;-><init>(Lcom/android/settings/cameragrip/CameraGripController;)V

    iput-object p2, p0, Lcom/android/settings/cameragrip/CameraGripController;->mSettingsObserver:Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;

    .line 32
    iput-object p1, p0, Lcom/android/settings/cameragrip/CameraGripController;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static isShowCameraGrip(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_show_camera_grip"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_show_camera_grip: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraGripController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 69
    sget-object p0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "aurora"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "camera_grip_settings"

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/cameragrip/CameraGripController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/cameragrip/CameraGripController;->isShowCameraGrip(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "camera_grip_settings"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 57
    :try_start_0
    sget-object p1, Lcom/android/settings/cameragrip/CameraGripController$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripController;->mSettingsObserver:Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;->unregister()V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripController;->mSettingsObserver:Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/cameragrip/CameraGripController$SettingsObserver;->register()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
