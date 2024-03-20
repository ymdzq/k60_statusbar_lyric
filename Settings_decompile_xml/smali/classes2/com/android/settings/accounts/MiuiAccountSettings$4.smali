.class Lcom/android/settings/accounts/MiuiAccountSettings$4;
.super Ljava/lang/Object;
.source "MiuiAccountSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiAccountSettings;->getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/accounts/NewAccountPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/MiuiAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiAccountSettings;)V
    .locals 0

    .line 919
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$4;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/accounts/NewAccountPreference;Lcom/android/settings/accounts/NewAccountPreference;)I
    .locals 0

    .line 922
    iget-object p0, p1, Lcom/android/settings/accounts/NewAccountPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lcom/android/settings/accounts/NewAccountPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 919
    check-cast p1, Lcom/android/settings/accounts/NewAccountPreference;

    check-cast p2, Lcom/android/settings/accounts/NewAccountPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accounts/MiuiAccountSettings$4;->compare(Lcom/android/settings/accounts/NewAccountPreference;Lcom/android/settings/accounts/NewAccountPreference;)I

    move-result p0

    return p0
.end method
