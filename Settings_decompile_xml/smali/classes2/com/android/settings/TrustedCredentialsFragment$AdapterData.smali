.class Lcom/android/settings/TrustedCredentialsFragment$AdapterData;
.super Ljava/lang/Object;
.source "TrustedCredentialsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsFragment$AdapterData$AliasLoader;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

.field private final mCertHoldersByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsFragment$CertHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTab(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object p0
.end method

.method private constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    .line 660
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    .line 661
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;Lcom/android/settings/TrustedCredentialsFragment$AdapterData-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)V

    return-void
.end method


# virtual methods
.method public remove(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V
    .locals 1

    .line 815
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    .line 816
    iget v0, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 818
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
