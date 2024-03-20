.class public Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeyAndGestureShortcutStatHelperFragment.java"


# instance fields
.field private mKeySettingsStatHelper:Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

.field public mPageTitle:Ljava/lang/String;

.field public mShortcutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mKeySettingsStatHelper:Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 24
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 25
    iget-object v0, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mKeySettingsStatHelper:Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

    iget-object v1, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->traceUserSetting(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
