.class public final synthetic Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Supplier;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;Ljava/util/Set;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;->f$1:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/android/settings/network/SubscriptionUtil;->$r8$lambda$iMk67Nhu5Vsnp_vxsZaZmgTHHAM(Ljava/util/function/Supplier;Ljava/util/Set;Landroid/content/Context;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
