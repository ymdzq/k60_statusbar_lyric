.class public final synthetic Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda5;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda5;->f$0:I

    check-cast p1, Landroid/telephony/UiccCardInfo;

    invoke-static {p0, p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->$r8$lambda$lIamkWKWOrS5xu86x7Tg7fiidSU(ILandroid/telephony/UiccCardInfo;)Z

    move-result p0

    return p0
.end method
