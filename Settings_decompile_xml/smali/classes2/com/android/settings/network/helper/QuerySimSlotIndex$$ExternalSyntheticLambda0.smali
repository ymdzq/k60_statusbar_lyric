.class public final synthetic Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/helper/QuerySimSlotIndex;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;

    check-cast p1, Landroid/telephony/UiccSlotInfo;

    invoke-static {p0, p1}, Lcom/android/settings/network/helper/QuerySimSlotIndex;->$r8$lambda$Qjpl8KyLdyA-aVfxeLDBrNvDh8o(Lcom/android/settings/network/helper/QuerySimSlotIndex;Landroid/telephony/UiccSlotInfo;)Z

    move-result p0

    return p0
.end method
