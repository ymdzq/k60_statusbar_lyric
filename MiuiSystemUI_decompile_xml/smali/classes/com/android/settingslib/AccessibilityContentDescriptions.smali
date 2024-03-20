.class public abstract Lcom/android/settingslib/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ETHERNET_CONNECTION_VALUES:[I

.field public static final PHONE_SIGNAL_STRENGTH:[I

.field public static final WIFI_CONNECTION_STRENGTH:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x7f1300bc    # @string/accessibility_phone_one_bar 'Phone one bar.'

    .line 2
    const v1, 0x7f1300bf    # @string/accessibility_phone_two_bars 'Phone two bars.'

    .line 5
    const v2, 0x7f1300b5    # @string/accessibility_no_phone 'No phone.'

    .line 8
    const v3, 0x7f1300be    # @string/accessibility_phone_three_bars 'Phone three bars.'

    .line 11
    const v4, 0x7f1300bd    # @string/accessibility_phone_signal_full 'Phone signal full.'

    .line 14
    filled-new-array {v2, v0, v1, v3, v4}, [I

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    const v0, 0x7f130101    # @string/accessibility_wifi_one_bar 'Wifi one bar.'

    .line 23
    const v1, 0x7f130106    # @string/accessibility_wifi_two_bars 'Wifi two bars.'

    .line 26
    const v2, 0x7f1300b7    # @string/accessibility_no_wifi 'Wifi disconnected.'

    .line 29
    const v3, 0x7f130105    # @string/accessibility_wifi_three_bars 'Wifi three bars.'

    .line 32
    const v4, 0x7f130104    # @string/accessibility_wifi_signal_full 'Wifi signal full.'

    .line 35
    filled-new-array {v2, v0, v1, v3, v4}, [I

    .line 38
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 42
    const v0, 0x7f13007c    # @string/accessibility_ethernet_disconnected 'Ethernet disconnected.'

    .line 44
    const v1, 0x7f13007b    # @string/accessibility_ethernet_connected 'Ethernet.'

    .line 47
    filled-new-array {v0, v1}, [I

    .line 50
    move-result-object v0

    .line 53
    sput-object v0, Lcom/android/settingslib/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    .line 54
    return-void
    .line 56
.end method
