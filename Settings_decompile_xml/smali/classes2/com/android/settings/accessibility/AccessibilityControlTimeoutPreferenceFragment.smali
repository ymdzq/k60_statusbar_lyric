.class public final Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccessibilityControlTimeoutPreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_control_timeout_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 49
    sget p0, Lcom/android/settings/R$string;->help_url_timeout:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "AccessibilityControlTimeoutPreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x76a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 44
    sget p0, Lcom/android/settings/R$xml;->accessibility_control_timeout_settings:I

    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method
