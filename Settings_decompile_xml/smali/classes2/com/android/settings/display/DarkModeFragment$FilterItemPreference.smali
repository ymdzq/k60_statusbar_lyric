.class Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;
.super Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;
.source "DarkModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/DarkModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterItemPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/DarkModeFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/DarkModeFragment;Landroid/content/Context;Lcom/android/settings/display/DarkModeAppInfo;)V
    .locals 6

    .line 349
    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;->this$0:Lcom/android/settings/display/DarkModeFragment;

    .line 350
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-virtual {p3}, Lcom/android/settings/display/DarkModeAppInfo;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 352
    invoke-static {p1}, Lcom/android/settings/display/DarkModeFragment;->-$$Nest$fgetmDarkModeAppCacheManager(Lcom/android/settings/display/DarkModeFragment;)Lcom/android/settings/display/util/DarkModeAppCacheManager;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/display/DarkModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/DarkModeFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/settings/display/DarkModeAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/settings/display/DarkModeFragment;->userId:I

    invoke-static {p1}, Lcom/android/settings/display/DarkModeFragment;->-$$Nest$fgetmAppInfo(Lcom/android/settings/display/DarkModeFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {p1}, Lcom/android/settings/display/DarkModeFragment;->-$$Nest$fgetmPackageManager(Lcom/android/settings/display/DarkModeFragment;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/display/util/DarkModeAppCacheManager;->loadAppIcon(Landroid/content/Context;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 354
    invoke-virtual {p3}, Lcom/android/settings/display/DarkModeAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 355
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 356
    invoke-virtual {p3}, Lcom/android/settings/display/DarkModeAppInfo;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 357
    sget p2, Lcom/android/settings/R$layout;->miuix_preference_app_layout:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 358
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
