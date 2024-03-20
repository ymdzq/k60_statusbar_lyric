.class public Lcom/android/settings/TrustedCredentialsFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "TrustedCredentialsFragment.java"

# interfaces
.implements Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;,
        Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;,
        Lcom/android/settings/TrustedCredentialsFragment$AdapterData;,
        Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;,
        Lcom/android/settings/TrustedCredentialsFragment$CertHolder;
    }
.end annotation


# instance fields
.field private final mAliasLoaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/TrustedCredentialsFragment$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

.field private mConfirmedCredentialUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

.field private mConfirmingCredentialUser:I

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mFragmentView:Landroid/view/ViewGroup;

.field private mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKeyChainConnectionByProfileId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mTrustAllCaUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private final mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$C8Oa8pcZc7F4OmMpM_qpC32Ew6g(Lcom/android/settings/TrustedCredentialsFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment;->lambda$showTrustAllCaDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAliasLoaders(Lcom/android/settings/TrustedCredentialsFragment;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasLoaders:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePolicyManager(Lcom/android/settings/TrustedCredentialsFragment;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragmentView(Lcom/android/settings/TrustedCredentialsFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mFragmentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupAdapter(Lcom/android/settings/TrustedCredentialsFragment;)Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyChainConnectionByProfileId(Lcom/android/settings/TrustedCredentialsFragment;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustAllCaUserId(Lcom/android/settings/TrustedCredentialsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mTrustAllCaUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/settings/TrustedCredentialsFragment;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAliasOperation(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasOperation:Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

    return-void
.end method

.method static bridge synthetic -$$Nest$misTrustAllCaCertModeInProgress(Lcom/android/settings/TrustedCredentialsFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsFragment;->isTrustAllCaCertModeInProgress()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCertDialog(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment;->showCertDialog(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTrustAllCaDialog(Lcom/android/settings/TrustedCredentialsFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment;->showTrustAllCaDialog(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartConfirmCredential(Lcom/android/settings/TrustedCredentialsFragment;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment;->startConfirmCredential(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 109
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasLoaders:Ljava/util/Set;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsFragment$1;-><init>(Lcom/android/settings/TrustedCredentialsFragment;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private closeKeyChainConnections()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 247
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 250
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private createChildView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {v0, p4}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {v1, p4}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->createChildAdapter(I)Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;

    move-result-object p4

    .line 189
    sget v1, Lcom/android/settings/R$layout;->trusted_credential_list_container:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 191
    invoke-virtual {p4, p1, p3}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->setContainerView(Landroid/widget/LinearLayout;Landroid/os/Bundle;)V

    .line 193
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getGroupCount()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 194
    :goto_0
    invoke-virtual {p4, v3}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->showHeader(Z)V

    .line 195
    invoke-virtual {p4, v0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->showDivider(Z)V

    const/4 v3, 0x2

    if-le p0, v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 196
    :cond_2
    :goto_1
    invoke-virtual {p4, v1, p3}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->setExpandIfAvailable(ZLandroid/os/Bundle;)V

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 200
    :cond_3
    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_2
    return-void
.end method

.method private isTrustAllCaCertModeInProgress()Z
    .locals 1

    .line 926
    iget p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mTrustAllCaUserId:I

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showTrustAllCaDialog$0(Landroid/content/DialogInterface;)V
    .locals 1

    .line 936
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ARG_SHOW_NEW_FOR_USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/16 p1, -0x2710

    .line 937
    iput p1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mTrustAllCaUserId:I

    return-void
.end method

.method private showCertDialog(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V
    .locals 2

    .line 943
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    .line 944
    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolder(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    move-result-object p0

    .line 945
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showTrustAllCaDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsFragment$CertHolder;",
            ">;)V"
        }
    .end annotation

    .line 931
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    .line 932
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    .line 933
    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolders([Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TrustedCredentialsFragment;)V

    .line 934
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 939
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private startConfirmCredential(I)Z
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 263
    :cond_0
    iput p1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    const/4 p1, 0x1

    .line 264
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getX509CertsFromCertHolder(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/TrustedCredentialsFragment$CertHolder;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/security/KeyChain$KeyChainConnection;

    .line 955
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object p0

    .line 956
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->-$$Nest$fgetmAlias(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 957
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 958
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 959
    invoke-interface {p0, v2, v3}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v2

    .line 960
    invoke-static {v2}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 961
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 963
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "TrustedCredentialsFragment"

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while retrieving certificate chain for root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->-$$Nest$fgetmAlias(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v0

    :goto_2
    return-object v4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 228
    iget p1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    .line 229
    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    const/16 v0, -0x2710

    .line 232
    iput v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 237
    invoke-interface {p3, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 131
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 132
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mUserManager:Landroid/os/UserManager;

    .line 133
    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ARG_SHOW_NEW_FOR_USER"

    const/16 v3, -0x2710

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mTrustAllCaUserId:I

    .line 136
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    .line 137
    iput v3, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    if-eqz p1, :cond_0

    const-string v1, "ConfirmingCredentialUser"

    .line 139
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    const-string v1, "ConfirmedCredentialUsers"

    .line 141
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 148
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 149
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 150
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 151
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustedCredentialsFragment$AdapterData$AliasLoader;

    .line 214
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 217
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasOperation:Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasOperation:Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsFragment;->closeKeyChainConnections()V

    .line 222
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 169
    sget v0, Lcom/android/settings/R$layout;->trusted_credentials:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment;->mFragmentView:Landroid/view/ViewGroup;

    .line 171
    sget v0, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 173
    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "tab"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter-IA;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    .line 175
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getGroupCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    if-nez p3, :cond_1

    move-object v2, v3

    goto :goto_2

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-static {v2, v1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->-$$Nest$mgetKey(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 179
    :goto_2
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/settings/TrustedCredentialsFragment;->createChildView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_2
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mFragmentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onResume()V
    .locals 0

    .line 206
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 207
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mFragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "ConfirmedCredentialUsers"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "ConfirmingCredentialUser"

    .line 160
    iget v1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialUser:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mGroupAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-static {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->-$$Nest$msaveState(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;Landroid/os/Bundle;)V

    return-void
.end method

.method public removeOrInstallCert(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V
    .locals 2

    .line 973
    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$CertHolder;Lcom/android/settings/TrustedCredentialsFragment$AliasOperation-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 984
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment;->startConfirmCredential(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 986
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    :cond_1
    return p1
.end method
