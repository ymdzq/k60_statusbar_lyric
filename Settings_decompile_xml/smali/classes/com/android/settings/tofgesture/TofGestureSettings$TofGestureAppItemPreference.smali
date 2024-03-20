.class Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureAppItemPreference;
.super Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;
.source "TofGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tofgesture/TofGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TofGestureAppItemPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tofgesture/TofGestureSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/tofgesture/TofGestureSettings;Landroid/content/Context;Lcom/android/settings/tofgesture/util/TofGestureAppItem;)V
    .locals 3

    .line 171
    iput-object p1, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureAppItemPreference;->this$0:Lcom/android/settings/tofgesture/TofGestureSettings;

    .line 172
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p3}, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->getAppName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {p1}, Lcom/android/settings/tofgesture/TofGestureSettings;->-$$Nest$fgetmTofGestureAppsCacheManager(Lcom/android/settings/tofgesture/TofGestureSettings;)Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    move-result-object p2

    invoke-static {p1}, Lcom/android/settings/tofgesture/TofGestureSettings;->-$$Nest$fgetmContext(Lcom/android/settings/tofgesture/TofGestureSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->loadAppIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {p3}, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->getPkgName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p3}, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->getSupportSceneDes()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 178
    invoke-virtual {p3}, Lcom/android/settings/tofgesture/util/TofGestureAppItem;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 179
    sget p2, Lcom/android/settings/R$layout;->miuix_preference_app_layout:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 180
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
