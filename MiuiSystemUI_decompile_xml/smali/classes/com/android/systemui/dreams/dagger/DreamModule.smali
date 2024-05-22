.class public interface abstract Lcom/android/systemui/dreams/dagger/DreamModule;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
