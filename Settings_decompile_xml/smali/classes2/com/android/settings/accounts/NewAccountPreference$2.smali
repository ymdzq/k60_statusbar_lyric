.class Lcom/android/settings/accounts/NewAccountPreference$2;
.super Ljava/lang/Object;
.source "NewAccountPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/NewAccountPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/NewAccountPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/NewAccountPreference;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference$2;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference$2;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {p1}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmFragment(Lcom/android/settings/accounts/NewAccountPreference;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference$2;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference$2;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {v0}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmFragment(Lcom/android/settings/accounts/NewAccountPreference;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference$2;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {v0}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmFragmentArguments(Lcom/android/settings/accounts/NewAccountPreference;)Landroid/os/Bundle;

    move-result-object v0

    .line 215
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference$2;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference;->mTitle:Ljava/lang/CharSequence;

    .line 216
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method
