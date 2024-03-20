.class Lcom/android/settings/UsageAndDiagnosticsFooterPreference$1;
.super Ljava/lang/Object;
.source "UsageAndDiagnosticsFooterPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsageAndDiagnosticsFooterPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsageAndDiagnosticsFooterPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageAndDiagnosticsFooterPreference;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/UsageAndDiagnosticsFooterPreference$1;->this$0:Lcom/android/settings/UsageAndDiagnosticsFooterPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "AdServiceSettings_click_aaid_instructions"

    .line 52
    invoke-static {p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 53
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/MiuiUtils;->getViewLicenseAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.LICENSE_TYPE"

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/UsageAndDiagnosticsFooterPreference$1;->this$0:Lcom/android/settings/UsageAndDiagnosticsFooterPreference;

    invoke-static {p0}, Lcom/android/settings/UsageAndDiagnosticsFooterPreference;->-$$Nest$fgetmFragment(Lcom/android/settings/UsageAndDiagnosticsFooterPreference;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AdFooterPreference"

    const-string v0, "Failed to find activity AdInstructionsActivity"

    .line 58
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
