.class public Lcom/android/settings/display/ScreenZoomPreference;
.super Lcom/android/settings/MiuiValuePreference;
.source "ScreenZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public updateZoomLevel(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-static {p1}, Lcom/android/settings/display/ScreenZoomUtils;->getLastZoomLevel(Landroid/content/Context;)I

    move-result v0

    .line 39
    invoke-static {p1}, Lcom/android/settings/display/ScreenZoomUtils;->getEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    if-ltz v0, :cond_1

    if-eqz p1, :cond_1

    .line 40
    array-length v1, p1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method
