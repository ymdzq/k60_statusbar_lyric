.class Lcom/android/settings/accounts/NewAccountPreference$3;
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

    .line 230
    iput-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference$3;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 233
    iget-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference$3;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {p1}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmAccount(Lcom/android/settings/accounts/NewAccountPreference;)Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference$3;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {p1}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmFragmentArguments(Lcom/android/settings/accounts/NewAccountPreference;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-static {p1, v0}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fputmAccount(Lcom/android/settings/accounts/NewAccountPreference;Landroid/accounts/Account;)V

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference$3;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {p1}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmiuiAccountSettings(Lcom/android/settings/accounts/NewAccountPreference;)Lcom/android/settings/accounts/MiuiAccountSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/NewAccountPreference$3;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {v0}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmAccount(Lcom/android/settings/accounts/NewAccountPreference;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/NewAccountPreference$3;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {v1}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmUserHandle(Lcom/android/settings/accounts/NewAccountPreference;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/accounts/NewAccountPreference$3;->this$0:Lcom/android/settings/accounts/NewAccountPreference;

    invoke-static {p0}, Lcom/android/settings/accounts/NewAccountPreference;->-$$Nest$fgetmAuthorityList(Lcom/android/settings/accounts/NewAccountPreference;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/settings/accounts/MiuiAccountSettings;->requestSync(Landroid/accounts/Account;ILjava/util/List;)V

    return-void
.end method
