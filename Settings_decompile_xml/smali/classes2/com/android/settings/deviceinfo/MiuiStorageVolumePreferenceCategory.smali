.class public Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;
.super Lcom/android/settingslib/miuisettings/preference/PreferenceCategory;
.source "MiuiStorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory$ReadVolumeTask;
    }
.end annotation


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private mTotalSize:J

.field private mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateApproximate(Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->updateApproximate(JJ)V

    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 0

    .line 248
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lmiuix/text/utilities/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateApproximate(JJ)V
    .locals 6

    .line 230
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mTotalSize:J

    sub-long v0, p1, p3

    .line 232
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 233
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mTotalSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v0, v0

    long-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, -0x10000

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->memory_title:I

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    return-void
.end method
