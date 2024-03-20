.class final Lcom/android/keyguard/logging/BiometricUnlockLogger$logStartWakeAndUnlock$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/keyguard/logging/BiometricUnlockLogger$logStartWakeAndUnlock$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/logging/BiometricUnlockLogger$logStartWakeAndUnlock$2;

    .line 2
    invoke-direct {v0}, Lcom/android/keyguard/logging/BiometricUnlockLogger$logStartWakeAndUnlock$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/keyguard/logging/BiometricUnlockLogger$logStartWakeAndUnlock$2;->INSTANCE:Lcom/android/keyguard/logging/BiometricUnlockLogger$logStartWakeAndUnlock$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 4
    move-result p0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    const-string p1, "UNKNOWN{"

    .line 11
    const-string/jumbo v0, "}"

    .line 13
    invoke-static {p1, p0, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    const-string p0, "MODE_DISMISS_BOUNCER"

    .line 21
    goto :goto_0

    .line 23
    :pswitch_1
    const-string p0, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    .line 24
    goto :goto_0

    .line 26
    :pswitch_2
    const-string p0, "MODE_UNLOCK_COLLAPSING"

    .line 27
    goto :goto_0

    .line 29
    :pswitch_3
    const-string p0, "MODE_ONLY_WAKE"

    .line 30
    goto :goto_0

    .line 32
    :pswitch_4
    const-string p0, "MODE_SHOW_BOUNCER"

    .line 33
    goto :goto_0

    .line 35
    :pswitch_5
    const-string p0, "MODE_WAKE_AND_UNLOCK_PULSING"

    .line 36
    goto :goto_0

    .line 38
    :pswitch_6
    const-string p0, "MODE_WAKE_AND_UNLOCK"

    .line 39
    goto :goto_0

    .line 41
    :pswitch_7
    const-string p0, "MODE_NONE"

    .line 42
    :goto_0
    const-string/jumbo p1, "startWakeAndUnlock("

    .line 44
    const-string v0, ")"

    .line 47
    invoke-static {p1, p0, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 54
.end method
