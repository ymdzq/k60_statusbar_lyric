.class public Lcom/android/settings/MiuiUserCredentialsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiUserCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiUserCredentialsSettings$Credential;,
        Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;,
        Lcom/android/settings/MiuiUserCredentialsSettings$AliasLoader;
    }
.end annotation


# static fields
.field private static final credentialViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 328
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiUserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    .line 330
    sget v1, Lcom/android/settings/R$id;->contents_userkey:I

    sget-object v2, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->USER_PRIVATE_KEY:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    sget v1, Lcom/android/settings/R$id;->contents_usercrt:I

    sget-object v2, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    sget v1, Lcom/android/settings/R$id;->contents_cacrt:I

    sget-object v2, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method protected static getCredentialView(Lcom/android/settings/MiuiUserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 338
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 341
    :cond_0
    sget p1, Lcom/android/settings/R$id;->alias:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    sget p1, Lcom/android/settings/R$id;->purpose:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MiuiUserCredentialsSettings$Credential;->isSystem()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 343
    sget p3, Lcom/android/settings/R$string;->credential_for_vpn_and_apps:I

    goto :goto_0

    .line 344
    :cond_1
    sget p3, Lcom/android/settings/R$string;->credential_for_wifi:I

    .line 342
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 346
    sget p1, Lcom/android/settings/R$id;->contents:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    if-eqz p4, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_4

    move p1, v0

    .line 348
    :goto_2
    sget-object p4, Lcom/android/settings/MiuiUserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 349
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    move p4, v0

    goto :goto_3

    :cond_3
    move p4, p3

    :goto_3
    invoke-virtual {v1, p4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-object p2
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x11d

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 448
    const-class p0, Lcom/android/settings/MiuiUserCredentialsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/MiuiUserCredentialsSettings$Credential;

    if-eqz p1, :cond_0

    .line 83
    invoke-static {p0, p1}, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;->show(Landroidx/fragment/app/Fragment;Lcom/android/settings/MiuiUserCredentialsSettings$Credential;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/MiuiUserCredentialsSettings;->refreshItems()V

    return-void
.end method

.method protected refreshItems()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/settings/MiuiUserCredentialsSettings$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiUserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/MiuiUserCredentialsSettings;Lcom/android/settings/MiuiUserCredentialsSettings$AliasLoader-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
