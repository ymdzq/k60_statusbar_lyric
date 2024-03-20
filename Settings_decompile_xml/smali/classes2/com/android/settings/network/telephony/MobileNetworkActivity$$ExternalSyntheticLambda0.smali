.class public final synthetic Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->$r8$lambda$X5r4k9K1ON-NJMlEDGXK8IYHX7k(Lcom/android/settings/network/telephony/MobileNetworkActivity;Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z

    move-result p0

    return p0
.end method
