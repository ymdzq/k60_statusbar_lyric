.class public final Lcom/android/systemui/statusbar/mobile/MobileMappings$Config;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public defaultDataSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/mobile/MobileMappings$Config;->defaultDataSlotId:I

    .line 6
    return-void
    .line 8
.end method

.method public static readConfig()Lcom/android/systemui/statusbar/mobile/MobileMappings$Config;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/mobile/MobileMappings$Config;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/mobile/MobileMappings$Config;-><init>()V

    .line 4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 7
    move-result v1

    .line 10
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 11
    move-result v1

    .line 14
    iput v1, v0, Lcom/android/systemui/statusbar/mobile/MobileMappings$Config;->defaultDataSlotId:I

    .line 15
    return-object v0
    .line 17
.end method