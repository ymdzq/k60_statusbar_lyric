.class public Lcom/android/settings/msim/MSimUtils$SubscriptionInfoComparable;
.super Ljava/lang/Object;
.source "MSimUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/msim/MSimUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionInfoComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiui/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 45
    check-cast p1, Lmiui/telephony/SubscriptionInfo;

    check-cast p2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/msim/MSimUtils$SubscriptionInfoComparable;->compare(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I

    move-result p0

    return p0
.end method

.method public compare(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I
    .locals 0

    .line 48
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result p0

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
