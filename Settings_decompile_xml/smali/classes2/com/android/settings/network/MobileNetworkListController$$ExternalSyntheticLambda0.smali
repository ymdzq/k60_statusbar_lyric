.class public final synthetic Lcom/android/settings/network/MobileNetworkListController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkListController;

.field public final synthetic f$1:Landroid/telephony/SubscriptionInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkListController;Landroid/telephony/SubscriptionInfo;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkListController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkListController;

    iput-object p2, p0, Lcom/android/settings/network/MobileNetworkListController$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/SubscriptionInfo;

    iput p3, p0, Lcom/android/settings/network/MobileNetworkListController$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkListController;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkListController$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/SubscriptionInfo;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkListController$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/network/MobileNetworkListController;->$r8$lambda$rHaw-eggWIcgfLMjONmmBKSfStk(Lcom/android/settings/network/MobileNetworkListController;Landroid/telephony/SubscriptionInfo;ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
