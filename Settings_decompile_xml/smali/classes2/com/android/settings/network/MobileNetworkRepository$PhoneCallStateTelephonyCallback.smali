.class Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "MobileNetworkRepository.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/MobileNetworkRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallStateTelephonyCallback"
.end annotation


# instance fields
.field private mCallState:I

.field final synthetic this$0:Lcom/android/settings/network/MobileNetworkRepository;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/MobileNetworkRepository;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    const/4 p1, 0x0

    .line 734
    iput p1, p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;->mCallState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkRepository;Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;-><init>(Lcom/android/settings/network/MobileNetworkRepository;)V

    return-void
.end method


# virtual methods
.method public isCallIdle()Z
    .locals 0

    .line 737
    iget p0, p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;->mCallState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCallStateChanged(I)V
    .locals 2

    .line 742
    iput p1, p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;->mCallState:I

    .line 743
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkRepository;->isAnyOngoingCallOnDevice()Z

    move-result p0

    .line 744
    invoke-static {}, Lcom/android/settings/network/MobileNetworkRepository;->-$$Nest$sfgetsCallbacks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;

    .line 745
    invoke-interface {v1, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onCallStateChanged(I)V

    .line 746
    invoke-interface {v1, p0}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAnyOngoingCallOnDevice(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
