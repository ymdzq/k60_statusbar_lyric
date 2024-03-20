.class public final synthetic Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/helper/QuerySimSlotIndex;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;

    check-cast p1, Landroid/telephony/UiccSlotInfo;

    invoke-static {p0, p1}, Lcom/android/settings/network/helper/QuerySimSlotIndex;->$r8$lambda$g6HDK0q6ZFxqm9TZz0eM0AtBNaY(Lcom/android/settings/network/helper/QuerySimSlotIndex;Landroid/telephony/UiccSlotInfo;)I

    move-result p0

    return p0
.end method
