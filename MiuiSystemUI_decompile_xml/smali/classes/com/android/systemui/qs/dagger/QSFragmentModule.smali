.class public interface abstract Lcom/android/systemui/qs/dagger/QSFragmentModule;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static providesQSUsingCollapsedLandscapeMedia(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f05004a    # @bool/config_quickSettingsMediaLandscapeCollapsed 'true'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method
