.class public abstract Lcom/android/systemui/statusbar/policy/SubscriptionHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static needUpdateMiuiConfig(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-eqz p0, :cond_4

    .line 7
    if-nez p1, :cond_1

    .line 9
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 23
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 27
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 40
    move-result v2

    .line 43
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 44
    move-result v3

    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 50
    move-result p0

    .line 53
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 54
    move-result p1

    .line 57
    if-eq p0, p1, :cond_3

    .line 58
    :cond_2
    move v0, v1

    .line 60
    :cond_3
    return v0

    .line 61
    :cond_4
    :goto_0
    return v1
    .line 62
.end method
