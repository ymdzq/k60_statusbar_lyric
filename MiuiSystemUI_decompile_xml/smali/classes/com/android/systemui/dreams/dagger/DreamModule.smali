.class public interface abstract Lcom/android/systemui/dreams/dagger/DreamModule;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static providesDreamOnlyEnabledForDockUser(Landroid/content/res/Resources;)Z
    .locals 1

    .line 1
    const v0, 0x1110136    # @android:bool/config_duplicate_port_omadm_wappush

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public static providesDreamSupported(Landroid/content/res/Resources;)Z
    .locals 1

    .line 1
    const v0, 0x1110137    # @android:bool/config_eap_sim_based_auth_supported

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method
