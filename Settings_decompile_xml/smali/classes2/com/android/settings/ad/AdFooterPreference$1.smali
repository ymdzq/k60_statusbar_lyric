.class Lcom/android/settings/ad/AdFooterPreference$1;
.super Ljava/lang/Object;
.source "AdFooterPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ad/AdFooterPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ad/AdFooterPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ad/AdFooterPreference;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/ad/AdFooterPreference$1;->this$0:Lcom/android/settings/ad/AdFooterPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "AdServiceSettings_click_aaid_instructions"

    .line 53
    invoke-static {p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 54
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.htmlviewer"

    const-string v1, "com.android.settings.ad.AdInstructionsActivity"

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/ad/AdFooterPreference$1;->this$0:Lcom/android/settings/ad/AdFooterPreference;

    invoke-static {p0}, Lcom/android/settings/ad/AdFooterPreference;->-$$Nest$fgetmFragment(Lcom/android/settings/ad/AdFooterPreference;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AdFooterPreference"

    const-string v0, "Failed to find activity AdInstructionsActivity"

    .line 59
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
