.class public Lcom/android/wifitrackerlib/WifiPickerTracker;
.super Lcom/android/wifitrackerlib/BaseWifiTracker;
.source "WifiPickerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
    }
.end annotation


# instance fields
.field private final mActiveWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHotspotNetworkDataCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mHotspotNetworkEntryCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/HotspotNetworkEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mKnownNetworkDataCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mKnownNetworkEntryCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/KnownNetworkEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

.field private final mLock:Ljava/lang/Object;

.field private mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

.field private final mNetworkRequestConfigCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

.field private mNumSavedNetworks:I

.field private final mOsuWifiEntryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/wifitrackerlib/OsuWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPasspointConfigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

.field private final mPasspointWifiConfigCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPasspointWifiEntryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/wifitrackerlib/PasspointWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mStandardWifiConfigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStandardWifiEntryCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/StandardWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestedConfigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSuggestedWifiEntryCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/StandardWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-bYMHifP6ymkx1yOe3PdD8TZzDk(Ljava/util/Set;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$5(Ljava/util/Set;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0WEmTcUobfU7nRFPnRw5OnXBHwA(Lcom/android/wifitrackerlib/KnownNetworkEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateKnownNetworkEntryScans$29(Lcom/android/wifitrackerlib/KnownNetworkEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4HZLnE3vrAbVJeorID5TdeFARBI(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateKnownNetworkEntryScans$25(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$62oBYFtBd7BJCZA_5Jo3RuzQYDo(ILjava/lang/Integer;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$conditionallyCreateConnectedStandardWifiEntry$42(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7mswMJvds-63SiusPS2mq9nDNBs(Ljava/util/Set;Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateStandardWifiEntryScans$16(Ljava/util/Set;Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$85fYBawUSe7eEVPmpDAjgQssZz0(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$12(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8Rjnj6Pqv_Ezkx6uNJcYJint63s(Ljava/util/Set;Ljava/util/Map;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateHotspotNetworkEntries$33(Ljava/util/Set;Ljava/util/Map;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ozZo1CMWro4bANxTnv70xkctmo(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$8(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BVLrgnf-ziB7vX9A4Lkxs9gYScY(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateKnownNetworkEntryScans$27(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C-cQ7A8aWTlM0b0s_nTNHrmhkzY(Lcom/android/wifitrackerlib/WifiPickerTracker;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updatePasspointConfigurations$40(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DkzwmJBBbo2gbKW6RBG-jim-tao(Lcom/android/wifitrackerlib/WifiPickerTracker;Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiConfigurations$38(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E4_zoivFUMfDEL_BQ7jkn3GU3sU(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;Lcom/android/wifitrackerlib/KnownNetworkEntry;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$handleKnownNetworkConnectionStatusChanged$3(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;Lcom/android/wifitrackerlib/KnownNetworkEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ExqmeYF9DDfBHEBr5ElLDXulxOM(Lcom/android/wifitrackerlib/KnownNetworkEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$13(Lcom/android/wifitrackerlib/KnownNetworkEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GXU81ch5bmGKshLcf5kT1xsnums(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$11(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$H-MlneuHOyDhEk_UjdbbL12R9VI(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateNetworkRequestEntryScans$34(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IU0WrFqbDZxuFa5O0eRCfV326p8(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updatePasspointConfigurations$39(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IU55ote6AZJHfJ4k_mEM14W4tMQ(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateKnownNetworkEntryScans$26(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JK6c3COmmS08KRn07SIV0CyP2n0(Lcom/android/wifitrackerlib/OsuWifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$10(Lcom/android/wifitrackerlib/OsuWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Jp-tIG96hjzHSXka6szQNQJhzHo(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateStandardWifiEntryScans$15(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MK93QI_dDNIFlHbG0bIj_4WluoA(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateHotspotNetworkEntries$30(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NQDnmbp5QXdXr9K9gnswOrj-fvg(Lcom/android/wifitrackerlib/WifiPickerTracker;Lcom/android/wifitrackerlib/StandardWifiEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiConfigurations$37(Lcom/android/wifitrackerlib/StandardWifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OwSFBD8VPT8aIVjrvqNIPuJ8tm8(Ljava/util/Set;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updatePasspointWifiEntryScans$21(Ljava/util/Set;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QfGD-FYhu4TubGZcXccBlZq3OVQ(Ljava/util/Set;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateHotspotNetworkEntries$32(Ljava/util/Set;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QvEjGPCRamIljetkUX_tQsTwcM8(Lcom/android/wifitrackerlib/WifiPickerTracker;Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$6(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RU0ERTRE6-FyQjyawGWlVN_ro_A(Lcom/android/wifitrackerlib/StandardWifiEntry;)Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$7(Lcom/android/wifitrackerlib/StandardWifiEntry;)Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RzlDQDdEm-_leB1lyfZfRKyB6Uk(Lcom/android/wifitrackerlib/HotspotNetworkEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$14(Lcom/android/wifitrackerlib/HotspotNetworkEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sm5B1ppXGFm1IHHHVBUVNbU3810(Ljava/util/Set;Ljava/util/Map;Lcom/android/wifitrackerlib/KnownNetworkEntry;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateKnownNetworkEntryScans$28(Ljava/util/Set;Ljava/util/Map;Lcom/android/wifitrackerlib/KnownNetworkEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SnGsmDbChseUYbp1Vh2FMWHC5bI(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateStandardWifiEntryScans$17(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SxCy4EHji77_wxQ8lpd_NkFPpp0(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$handleHotspotNetworkConnectionStatusChanged$0(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TiZF9CH6L27L0eGTBpr6HNL6djE(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiConfigurations$36(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Tmu5AqxxY_ItukB_9XysLq-6ecw(Lcom/android/wifitrackerlib/WifiPickerTracker;Ljava/util/Map;Lcom/android/wifitrackerlib/OsuWifiEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateOsuWifiEntryScans$22(Ljava/util/Map;Lcom/android/wifitrackerlib/OsuWifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UJNxjOT1jAFxPQE4iKYu0I_WtJg(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$conditionallyCreateConnectedStandardWifiEntry$41(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WDNlebnb9DT5pzKk5aJzxp0b_iw(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateOsuWifiEntryScans$23(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XWM0o0QnrfgFv_BaZzJwSTQsals(Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Lcom/android/wifitrackerlib/StandardWifiEntry;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateSuggestedWifiEntryScans$19(Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Lcom/android/wifitrackerlib/StandardWifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g80cdbBOKItaYOmSA90yzzmriJ4(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateSuggestedWifiEntryScans$18(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gnbR6ZXZG4V0tvL-5mnGYrUq-LM(Lcom/android/wifitrackerlib/PasspointWifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$9(Lcom/android/wifitrackerlib/PasspointWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hPva6JEZ8wb4StdFLC4FDiukTQY(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiConfigurations$35(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jpj1In1TIwSt4BR5nPWWv7W6wXs(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateHotspotNetworkEntries$31(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p9BEMztKEuLQOdt2dtX18OpbgnM(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$handleHotspotNetworkConnectionStatusChanged$1(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$potjsRY4dcXoOSpPQRPqg4nwUUI(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;Lcom/android/wifitrackerlib/KnownNetworkEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$handleKnownNetworkConnectionStatusChanged$2(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;Lcom/android/wifitrackerlib/KnownNetworkEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q59xugaKuglCLi-g3HC7RAWg7AQ(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateKnownNetworkEntryScans$24(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qNgwz6zBGzLAog8cjjzAYUXXWS8(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateSuggestedWifiEntryScans$20(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sWW3u2HVhimUPXYeAI57jPGKFfI(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->lambda$updateWifiEntries$4(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V
    .locals 14

    .line 170
    new-instance v1, Lcom/android/wifitrackerlib/WifiTrackerInjector;

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiTrackerInjector;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/wifitrackerlib/WifiPickerTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V
    .locals 16

    move-object/from16 v15, p0

    const-string v14, "WifiPickerTracker"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    .line 187
    invoke-direct/range {v0 .. v14}, Lcom/android/wifitrackerlib/BaseWifiTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    .line 116
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiConfigCache:Landroid/util/SparseArray;

    .line 132
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    const/4 v0, 0x0

    .line 140
    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkDataCache:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkDataCache:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    move-object/from16 v0, p13

    .line 190
    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    .line 192
    iget-object v0, v15, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wifitrackerlib/PasspointUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/PasspointUtilsStub;

    move-result-object v0

    iput-object v0, v15, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 193
    iget-object v1, v15, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/PasspointUtilsStub;->bindPasspointKeyService(Landroid/content/Context;)V

    return-void
.end method

.method private clearAllWifiEntries()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 296
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 297
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 298
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 299
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 304
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    return-void
.end method

.method private conditionallyCreateConnectedNetworkRequestEntry(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 10

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    invoke-static {p2}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v3, v2

    .line 1264
    :goto_0
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1265
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1266
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1267
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1272
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1277
    :cond_2
    new-instance v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 1278
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    if-eqz v1, :cond_3

    .line 1279
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1280
    :cond_3
    new-instance v1, Lcom/android/wifitrackerlib/NetworkRequestEntry;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/wifitrackerlib/NetworkRequestEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Landroid/net/wifi/WifiManager;Z)V

    iput-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 1282
    invoke-virtual {v1, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 1283
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 1285
    :cond_4
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method private conditionallyCreateConnectedPasspointWifiEntry(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 13

    .line 1370
    invoke-static {p2}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1371
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1375
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiConfigCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    if-nez v5, :cond_1

    return-void

    .line 1379
    :cond_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1380
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1384
    :cond_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 1385
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1384
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v10, :cond_3

    .line 1388
    new-instance v0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object v7, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v8, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v12, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    .line 1393
    :cond_3
    new-instance v0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;Z)V

    .line 1397
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 1398
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method private conditionallyCreateConnectedStandardWifiEntry(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 12

    .line 1295
    invoke-static {p2}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1296
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 1300
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 1301
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/List;

    .line 1303
    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;-><init>()V

    .line 1304
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;-><init>(I)V

    .line 1305
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1306
    invoke-interface {v2}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 1309
    :cond_1
    new-instance v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    const/4 v0, 0x0

    .line 1310
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1311
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 1312
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1316
    :cond_3
    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;Z)V

    .line 1319
    invoke-virtual {v0, p1, p2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 1320
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1322
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 1323
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_4

    if-eqz p0, :cond_4

    .line 1324
    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setNetworkInfo(Landroid/net/NetworkInfo;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private conditionallyCreateConnectedSuggestedWifiEntry(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 12

    .line 1338
    invoke-static {p2}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1339
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1342
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 1343
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/List;

    .line 1344
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v0, :cond_2

    goto :goto_0

    .line 1347
    :cond_2
    new-instance v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 1348
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1349
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 1350
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 1354
    :cond_4
    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;Z)V

    .line 1357
    invoke-virtual {v0, p1, p2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 1358
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private conditionallyUpdateScanResults(Z)V
    .locals 8

    .line 1093
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1094
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateStandardWifiEntryScans(Ljava/util/List;)V

    .line 1095
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateSuggestedWifiEntryScans(Ljava/util/List;)V

    .line 1096
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updatePasspointWifiEntryScans(Ljava/util/List;)V

    .line 1097
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateOsuWifiEntryScans(Ljava/util/List;)V

    .line 1098
    sget-boolean p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1099
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1100
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 1104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1103
    invoke-virtual/range {v0 .. v5}, Lcom/android/wifitrackerlib/PasspointUtilsStub;->updatePasspointR1EntryCache(Ljava/util/List;Ljava/util/Map;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V

    .line 1107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 1108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateContextualWifiEntryScans(Ljava/util/List;)V

    return-void

    .line 1112
    :cond_1
    iget-wide v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    if-eqz p1, :cond_2

    .line 1115
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/wifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    goto :goto_0

    .line 1119
    :cond_2
    iget-wide v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    add-long/2addr v0, v2

    .line 1122
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1, v0, v1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object p1

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateStandardWifiEntryScans(Ljava/util/List;)V

    .line 1124
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateSuggestedWifiEntryScans(Ljava/util/List;)V

    .line 1125
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updatePasspointWifiEntryScans(Ljava/util/List;)V

    .line 1126
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateOsuWifiEntryScans(Ljava/util/List;)V

    .line 1127
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateKnownNetworkEntryScans(Ljava/util/List;)V

    .line 1131
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateHotspotNetworkEntries()V

    .line 1134
    :cond_3
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/wifitrackerlib/PasspointUtilsStub;->updatePasspointR1EntryCache(Ljava/util/List;Ljava/util/Map;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 1138
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateContextualWifiEntryScans(Ljava/util/List;)V

    return-void
.end method

.method private getAllWifiEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    sget-boolean v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    if-eqz v1, :cond_1

    .line 286
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    if-eqz p0, :cond_2

    .line 289
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private static synthetic lambda$conditionallyCreateConnectedStandardWifiEntry$41(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    .line 1304
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$conditionallyCreateConnectedStandardWifiEntry$42(ILjava/lang/Integer;)Z
    .locals 0

    .line 1305
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$handleHotspotNetworkConnectionStatusChanged$0(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)Z
    .locals 2

    .line 541
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getHotspotNetworkEntryKey()Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->getDeviceId()J

    move-result-wide v0

    .line 542
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->getHotspotNetwork()Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getDeviceId()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$handleHotspotNetworkConnectionStatusChanged$1(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)V
    .locals 0

    .line 543
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->getStatus()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->onConnectionStatusChanged(I)V

    return-void
.end method

.method private static synthetic lambda$handleKnownNetworkConnectionStatusChanged$2(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;Lcom/android/wifitrackerlib/KnownNetworkEntry;)Z
    .locals 0

    .line 554
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$handleKnownNetworkConnectionStatusChanged$3(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;Lcom/android/wifitrackerlib/KnownNetworkEntry;)V
    .locals 0

    .line 555
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->getStatus()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/KnownNetworkEntry;->onConnectionStatusChanged(I)V

    return-void
.end method

.method private static synthetic lambda$updateHotspotNetworkEntries$30(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .locals 0

    .line 0
    return-object p0
.end method

.method private static synthetic lambda$updateHotspotNetworkEntries$31(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .locals 1

    const-string p1, "WifiPickerTracker"

    const-string v0, "Encountered duplicate key data in updateHotspotNetworkEntries"

    .line 1026
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static synthetic lambda$updateHotspotNetworkEntries$32(Ljava/util/Set;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)Z
    .locals 2

    .line 1035
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getHotspotNetworkEntryKey()Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->getDeviceId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateHotspotNetworkEntries$33(Ljava/util/Set;Ljava/util/Map;Lcom/android/wifitrackerlib/HotspotNetworkEntry;)V
    .locals 2

    .line 1039
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getHotspotNetworkEntryKey()Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->getDeviceId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1040
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1041
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {p2, p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->updateHotspotNetworkData(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    return-void
.end method

.method private static synthetic lambda$updateKnownNetworkEntryScans$24(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 953
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateKnownNetworkEntryScans$25(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;
    .locals 3

    .line 959
    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    .line 960
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getSecurityTypes()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static synthetic lambda$updateKnownNetworkEntryScans$26(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .locals 0

    .line 0
    return-object p0
.end method

.method private static synthetic lambda$updateKnownNetworkEntryScans$27(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .locals 1

    const-string p1, "WifiPickerTracker"

    const-string v0, "Encountered duplicate key data in updateKnownNetworkEntryScans"

    .line 963
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static synthetic lambda$updateKnownNetworkEntryScans$28(Ljava/util/Set;Ljava/util/Map;Lcom/android/wifitrackerlib/KnownNetworkEntry;)V
    .locals 1

    .line 975
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v0

    .line 976
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 978
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p2, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$updateKnownNetworkEntryScans$29(Lcom/android/wifitrackerlib/KnownNetworkEntry;)Z
    .locals 1

    .line 1014
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateNetworkRequestEntryScans$34(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 1082
    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    invoke-direct {v0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateOsuWifiEntryScans$22(Ljava/util/Map;Lcom/android/wifitrackerlib/OsuWifiEntry;)V
    .locals 1

    .line 927
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/OsuWifiEntry;->getOsuProvider()Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 929
    invoke-virtual {p2, p0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->setAlreadyProvisioned(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 932
    invoke-virtual {p2, v0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->setAlreadyProvisioned(Z)V

    .line 933
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 934
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 933
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    if-nez p0, :cond_1

    return-void

    .line 938
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->setOsuWifiEntry(Lcom/android/wifitrackerlib/OsuWifiEntry;)V

    return-void
.end method

.method private static synthetic lambda$updateOsuWifiEntryScans$23(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 943
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updatePasspointConfigurations$39(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Ljava/lang/String;
    .locals 0

    .line 1210
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    .line 1209
    invoke-static {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updatePasspointConfigurations$40(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 1215
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 1216
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1217
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updatePasspointConfig(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 1218
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSubscription()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSuggestion()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updatePasspointWifiEntryScans$21(Ljava/util/Set;Ljava/util/Map$Entry;)Z
    .locals 2

    .line 896
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 897
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 898
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$updateStandardWifiEntryScans$15(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 778
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateStandardWifiEntryScans$16(Ljava/util/Set;Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)V
    .locals 1

    .line 784
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v0

    .line 785
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 787
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p2, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$updateStandardWifiEntryScans$17(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateSuggestedWifiEntryScans$18(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 826
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateSuggestedWifiEntryScans$19(Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Lcom/android/wifitrackerlib/StandardWifiEntry;)V
    .locals 1

    .line 832
    invoke-virtual {p3}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v0

    .line 833
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p3, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 836
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->setUserShareable(Z)V

    return-void
.end method

.method private static synthetic lambda$updateSuggestedWifiEntryScans$20(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateWifiConfigurations$35(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1180
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateWifiConfigurations$36(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    .line 1181
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateWifiConfigurations$37(Lcom/android/wifitrackerlib/StandardWifiEntry;)V
    .locals 1

    .line 1187
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$updateWifiConfigurations$38(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 1

    .line 1191
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 1193
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateWifiEntries$10(Lcom/android/wifitrackerlib/OsuWifiEntry;)Z
    .locals 1

    .line 664
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->isAlreadyProvisioned()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateWifiEntries$11(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 668
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isAlreadyProvisioned()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateWifiEntries$12(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 672
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateWifiEntries$13(Lcom/android/wifitrackerlib/KnownNetworkEntry;)Z
    .locals 0

    .line 675
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateWifiEntries$14(Lcom/android/wifitrackerlib/HotspotNetworkEntry;)Z
    .locals 0

    .line 678
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateWifiEntries$4(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 590
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateWifiEntries$5(Ljava/util/Set;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 598
    instance-of v0, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 600
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object p1

    .line 599
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateWifiEntries$6(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 1

    .line 606
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isUserShareable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 609
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$updateWifiEntries$7(Lcom/android/wifitrackerlib/StandardWifiEntry;)Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;
    .locals 0

    .line 611
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateWifiEntries$8(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z
    .locals 1

    .line 659
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isUserShareable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateWifiEntries$9(Lcom/android/wifitrackerlib/PasspointWifiEntry;)Z
    .locals 0

    .line 662
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyOnNumSavedNetworksChanged()V
    .locals 2

    .line 1416
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    if-eqz v0, :cond_0

    .line 1417
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda22;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda22;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyOnNumSavedSubscriptionsChanged()V
    .locals 2

    .line 1426
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    if-eqz v0, :cond_0

    .line 1427
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda38;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda38;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyOnWifiEntriesChanged()V
    .locals 2

    .line 1406
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    if-eqz v0, :cond_0

    .line 1407
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda25;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateHotspotNetworkEntries()V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 1021
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkDataCache:Ljava/util/List;

    .line 1022
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda43;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda43;-><init>()V

    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda44;

    invoke-direct {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda44;-><init>()V

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda45;

    invoke-direct {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda45;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1031
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1034
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda46;

    invoke-direct {v3, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda46;-><init>(Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1038
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda47;

    invoke-direct {v3, v1, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda47;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1047
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1048
    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1050
    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1054
    new-instance v4, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v4, v3}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1055
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 1054
    invoke-virtual {v4, v3}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v3

    .line 1055
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v3

    :cond_0
    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 1061
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1062
    new-instance v12, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v7, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v10, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    .line 1064
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 1066
    invoke-virtual {v12, v3, v2}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 1068
    :cond_2
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateKnownNetworkEntryScans(Ljava/util/List;)V
    .locals 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "Scan Result list should not be null!"

    move-object/from16 v2, p1

    .line 949
    invoke-static {v2, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>()V

    .line 953
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;-><init>()V

    .line 954
    invoke-static {v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 957
    iget-object v2, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkDataCache:Ljava/util/List;

    .line 958
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;-><init>()V

    new-instance v4, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;-><init>()V

    new-instance v5, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v3, v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 970
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    .line 971
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    .line 970
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 971
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 974
    iget-object v4, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    new-instance v5, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;

    invoke-direct {v5, v3, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 984
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 985
    iget-object v4, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 987
    iget-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 991
    new-instance v6, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v6, v5}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 992
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 991
    invoke-virtual {v6, v5}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v5

    .line 992
    invoke-virtual {v5}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v5

    :cond_0
    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 998
    :goto_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 999
    new-instance v11, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    const/4 v7, 0x1

    invoke-direct {v11, v6, v7}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;Z)V

    .line 1001
    new-instance v15, Lcom/android/wifitrackerlib/KnownNetworkEntry;

    iget-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v9, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    .line 1003
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    .line 1004
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    move-object v6, v7

    move-object v7, v15

    move-object/from16 v17, v15

    move-object v15, v6

    invoke-direct/range {v7 .. v16}, Lcom/android/wifitrackerlib/KnownNetworkEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    move-object/from16 v6, v17

    .line 1006
    invoke-virtual {v6, v5, v4}, Lcom/android/wifitrackerlib/StandardWifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_2

    :cond_2
    move-object/from16 v6, v17

    .line 1008
    :goto_2
    iget-object v7, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1013
    :cond_3
    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private updateMergedCarrierEntry(I)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 701
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 704
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    goto/16 :goto_1

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->getSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_2

    return-void

    .line 709
    :cond_2
    new-instance v0, Lcom/android/wifitrackerlib/MergedCarrierEntry;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    move-object v1, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/wifitrackerlib/MergedCarrierEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;ZLandroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 711
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p1

    .line 713
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSlave()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isMloEntryNeed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 714
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_6

    .line 718
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 719
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 728
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSlave()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isMloEntryNeed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 729
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    new-instance v2, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v2, v0}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 731
    invoke-static {v0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 729
    invoke-virtual {v1, p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    .line 734
    :cond_4
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    new-instance v2, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v2, v0}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 736
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 734
    invoke-virtual {v1, p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 741
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 742
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 744
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    invoke-virtual {v1, p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->updateLinkProperties(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 748
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->notifyOnWifiEntriesChanged()V

    return-void
.end method

.method private updateNetworkCapabilities(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    .line 1232
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiConfigCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    .line 1233
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiConfigurations(Ljava/util/List;)V

    .line 1239
    :cond_0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAllWifiEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 1240
    invoke-virtual {v1, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    invoke-virtual {v0, p1, p2}, Lcom/android/wifitrackerlib/PasspointUtilsStub;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 1247
    invoke-direct {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->conditionallyCreateConnectedStandardWifiEntry(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 1248
    invoke-direct {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->conditionallyCreateConnectedSuggestedWifiEntry(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 1249
    invoke-direct {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->conditionallyCreateConnectedPasspointWifiEntry(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 1250
    invoke-direct {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->conditionallyCreateConnectedNetworkRequestEntry(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method private updateNetworkRequestEntryScans(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 1074
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    if-nez v0, :cond_0

    return-void

    .line 1080
    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v0

    .line 1081
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda9;-><init>(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;)V

    .line 1082
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1083
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1084
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void
.end method

.method private updateOsuWifiEntryScans(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 903
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 906
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 907
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 909
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 908
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 911
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 912
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/OsuWifiEntry;->getOsuProvider()Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/android/wifitrackerlib/OsuWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    goto :goto_0

    .line 916
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 917
    new-instance v10, Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x0

    move-object v3, v10

    move-object v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/wifitrackerlib/OsuWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/WifiManager;Z)V

    .line 919
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v10, v3}, Lcom/android/wifitrackerlib/OsuWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 920
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/wifitrackerlib/OsuWifiEntry;->osuProviderToOsuWifiEntryKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 925
    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda39;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 942
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda40;

    invoke-direct {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda40;-><init>()V

    .line 943
    invoke-interface {p0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private updatePasspointConfigurations(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Config list should not be null!"

    .line 1206
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1208
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda32;-><init>()V

    .line 1210
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    .line 1209
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 1208
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1214
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda33;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private updatePasspointWifiEntryScans(Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Scan Result list should not be null!"

    .line 860
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 863
    iget-object v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 864
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 866
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 867
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 868
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    const/4 v6, 0x0

    .line 869
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/util/List;

    .line 870
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    const/4 v5, 0x1

    .line 871
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 872
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 873
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v5, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 877
    iget-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v5, :cond_1

    .line 878
    iget-object v14, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    new-instance v15, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x0

    move-object v5, v15

    move-object v9, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;Z)V

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 881
    :cond_1
    iget-object v5, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 882
    iget-object v5, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    new-instance v6, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object v15, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 883
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v9, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v20, 0x0

    move-object v14, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v20}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/net/wifi/WifiManager;Z)V

    .line 882
    invoke-interface {v5, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_2
    :goto_1
    iget-object v5, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {v5, v4, v12, v3}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 895
    :cond_3
    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda10;

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda10;-><init>(Ljava/util/Set;)V

    .line 896
    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private updateStandardWifiEntryScans(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 774
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda26;-><init>()V

    .line 778
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;-><init>()V

    .line 779
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 780
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 783
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda27;

    invoke-direct {v2, v0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda27;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 790
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 791
    new-instance v6, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    const/4 v2, 0x1

    invoke-direct {v6, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;Z)V

    .line 793
    new-instance v11, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    .line 794
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    .line 795
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/List;

    iget-object v9, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;Z)V

    .line 797
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 802
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance p1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda28;

    invoke-direct {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda28;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private updateSuggestedWifiEntryScans(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 815
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 819
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getWifiConfigForMatchedNetworkSuggestionsSharedWithUser(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 820
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda12;-><init>()V

    .line 821
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 822
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 825
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda29;-><init>()V

    .line 826
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;-><init>()V

    .line 827
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 830
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 831
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda30;

    invoke-direct {v3, v1, p1, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda30;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 839
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 840
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v4

    .line 841
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 842
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 845
    :cond_1
    new-instance v13, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    .line 846
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/util/List;

    .line 847
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    iget-object v11, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v12, 0x0

    move-object v4, v13

    move-object v8, v3

    invoke-direct/range {v4 .. v12}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;Z)V

    .line 849
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/wifitrackerlib/StandardWifiEntry;->setUserShareable(Z)V

    .line 850
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 855
    :cond_2
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    new-instance p1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda31;

    invoke-direct {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda31;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private updateWifiConfigurations(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Config list should not be null!"

    .line 1149
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1151
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1152
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1154
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1157
    :cond_0
    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1159
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1160
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiConfigCache:Landroid/util/SparseArray;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1161
    :cond_1
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v2, :cond_3

    .line 1162
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1163
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    :cond_2
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1166
    :cond_3
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-eqz v2, :cond_5

    .line 1167
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1168
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    :cond_4
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1172
    :cond_5
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1173
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    :cond_6
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1178
    :cond_7
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsRelatedToolsController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothDetailsRelatedToolsController$$ExternalSyntheticLambda2;-><init>()V

    .line 1179
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda34;-><init>()V

    .line 1180
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda35;-><init>()V

    .line 1181
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1182
    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    .line 1183
    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNumSavedNetworks:I

    .line 1186
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda36;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1190
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda37;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1196
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateSuggestedWifiEntryScans(Ljava/util/List;)V

    .line 1198
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    if-eqz p1, :cond_8

    .line 1199
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    .line 1200
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1199
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 213
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 214
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected getContextualWifiEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 755
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;
    .locals 7

    .line 246
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    if-nez v0, :cond_0

    .line 250
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/wifitrackerlib/MergedCarrierEntry;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/wifitrackerlib/MergedCarrierEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;ZLandroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    return-object p0
.end method

.method public getNumSavedNetworks()I
    .locals 0

    .line 264
    iget p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNumSavedNetworks:I

    return p0
.end method

.method public getNumSavedSubscriptions()I
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getWifiEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 375
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->processConfiguredNetworksChanged()V

    return-void
.end method

.method protected handleConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .locals 1

    .line 486
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAllWifiEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 487
    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->updateConnectivityReport(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected handleDefaultNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 494
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAllWifiEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 495
    invoke-virtual {v0, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->onDefaultNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected handleDefaultNetworkLost()V
    .locals 1

    .line 502
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAllWifiEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 503
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->onDefaultNetworkLost()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected handleDefaultSubscriptionChanged(I)V
    .locals 0

    .line 510
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateMergedCarrierEntry(I)V

    return-void
.end method

.method protected handleHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 540
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda23;-><init>(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda24;-><init>(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    .line 542
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected handleHotspotNetworksUpdated(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;)V"
        }
    .end annotation

    .line 529
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 531
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 532
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateHotspotNetworkEntries()V

    .line 533
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    :cond_0
    return-void
.end method

.method protected handleKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 551
    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->getKnownNetwork()Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->getKnownNetwork()Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getSecurityTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 553
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda41;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda41;-><init>(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda42;

    invoke-direct {v0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda42;-><init>(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V

    .line 554
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected handleKnownNetworksUpdated(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;)V"
        }
    .end annotation

    .line 517
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 519
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 520
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateKnownNetworkEntryScans(Ljava/util/List;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    :cond_0
    return-void
.end method

.method protected handleLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 453
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAllWifiEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    .line 454
    invoke-virtual {v0, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->updateLinkProperties(Landroid/net/Network;Landroid/net/LinkProperties;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateNetworkCapabilities(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    return-void
.end method

.method protected handleNetworkLost(Landroid/net/Network;)V
    .locals 2

    .line 469
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAllWifiEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 470
    invoke-virtual {v1, p1}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkLost(Landroid/net/Network;)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/PasspointUtilsStub;->onNetworkLost(Landroid/net/Network;)V

    .line 475
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    if-eqz p1, :cond_1

    .line 476
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 477
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    return-void
.end method

.method protected handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 6

    .line 415
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSlave()Z

    move-result v0

    const-string v1, "networkInfo"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 417
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    goto :goto_0

    :cond_0
    move-object v0, v2

    move-object v3, v0

    .line 420
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSlave()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isMloEntryNeed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 423
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 424
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 426
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.SLAVE_STATE_CHANGE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 427
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 428
    invoke-static {v0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 429
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/NetworkInfo;

    .line 430
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    if-nez v3, :cond_3

    goto :goto_3

    .line 438
    :cond_3
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAllWifiEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v2, :cond_4

    .line 441
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleMloConnectedState(Lcom/android/wifitrackerlib/WifiEntry;Z)V

    .line 444
    :cond_4
    invoke-virtual {v1, v0, v3}, Lcom/android/wifitrackerlib/WifiEntry;->onPrimaryWifiInfoChanged(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    goto :goto_2

    .line 446
    :cond_5
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    :cond_6
    :goto_3
    return-void
.end method

.method protected handleOnStart()V
    .locals 4

    .line 311
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->clearAllWifiEntries()V

    .line 314
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiConfigurations(Ljava/util/List;)V

    .line 315
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updatePasspointConfigurations(Ljava/util/List;)V

    .line 316
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 317
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->conditionallyUpdateScanResults(Z)V

    .line 320
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->handleDefaultSubscriptionChanged(I)V

    .line 321
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 324
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSlave()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isMloEntryNeed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_2

    .line 330
    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 331
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 335
    new-instance v3, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v3, v2}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 339
    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 335
    invoke-virtual {p0, v0, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {p0, v0, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->handleLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 348
    :cond_2
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->notifyOnNumSavedNetworksChanged()V

    .line 349
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->notifyOnNumSavedSubscriptionsChanged()V

    .line 351
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Intent cannot be null!"

    .line 366
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultsUpdated"

    const/4 v1, 0x1

    .line 368
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 367
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->conditionallyUpdateScanResults(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    return-void
.end method

.method protected handleServiceConnected()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 562
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 564
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkDataCache:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->getKnownNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 565
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 566
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkDataCache:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->getHotspotNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateKnownNetworkEntryScans(Ljava/util/List;)V

    .line 568
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateHotspotNetworkEntries()V

    .line 569
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    :cond_0
    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 2

    .line 357
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->clearAllWifiEntries()V

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    return-void
.end method

.method protected processConfiguredNetworksChanged()V
    .locals 7

    .line 383
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiConfigurations(Ljava/util/List;)V

    .line 384
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updatePasspointConfigurations(Ljava/util/List;)V

    .line 386
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 387
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateStandardWifiEntryScans(Ljava/util/List;)V

    .line 388
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 389
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updatePasspointWifiEntryScans(Ljava/util/List;)V

    .line 390
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateOsuWifiEntryScans(Ljava/util/List;)V

    .line 392
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/wifitrackerlib/PasspointUtilsStub;->updatePasspointR1EntryCache(Ljava/util/List;Ljava/util/Map;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V

    .line 396
    sget-boolean v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateKnownNetworkEntryScans(Ljava/util/List;)V

    .line 400
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateHotspotNetworkEntries()V

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->notifyOnNumSavedNetworksChanged()V

    .line 403
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->notifyOnNumSavedSubscriptionsChanged()V

    .line 404
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    return-void
.end method

.method protected updateContextualWifiEntryScans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected updateWifiEntries()V
    .locals 8

    .line 578
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 580
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 581
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 583
    sget-boolean v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    if-eqz v1, :cond_1

    .line 587
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 591
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 592
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    .line 593
    instance-of v4, v3, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-eqz v4, :cond_2

    .line 594
    check-cast v3, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    .line 595
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getHotspotNetworkEntryKey()Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v3

    .line 594
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 598
    :cond_3
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;-><init>(Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 601
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    sget-object v2, Lcom/android/wifitrackerlib/WifiEntry;->WIFI_PICKER_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 602
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 603
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 604
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda14;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker;)V

    .line 605
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda15;-><init>()V

    .line 611
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 612
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 613
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 614
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 615
    invoke-virtual {v4}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getAllUtf8Ssids()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 617
    :cond_4
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 618
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wifitrackerlib/KnownNetworkEntry;

    .line 620
    invoke-virtual {v5}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v5

    .line 619
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 622
    :cond_5
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 623
    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    .line 624
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getHotspotNetworkEntryKey()Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->isVirtualEntry()Z

    move-result v7

    if-nez v7, :cond_6

    .line 626
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getHotspotNetworkEntryKey()Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v6

    .line 625
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 629
    :cond_7
    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 630
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateAdminRestrictions()V

    .line 631
    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    .line 634
    :cond_8
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result v7

    if-nez v7, :cond_a

    .line 636
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    .line 640
    :cond_9
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_4

    .line 644
    :cond_a
    sget-boolean v7, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v7, :cond_c

    .line 647
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_4

    .line 652
    :cond_b
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getStandardWifiEntryKey()Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_4

    .line 656
    :cond_c
    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 658
    :cond_d
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 660
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 658
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 661
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda17;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 662
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 661
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 663
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;

    invoke-direct {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda18;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 665
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 663
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/PasspointUtilsStub;->getPasspointR1WifiEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda19;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 669
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 667
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 671
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getContextualWifiEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;

    invoke-direct {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 672
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 671
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 673
    sget-boolean v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v1, :cond_e

    .line 674
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda21;

    invoke-direct {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda21;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 676
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    .line 675
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 674
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 677
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 679
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    .line 678
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 677
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 681
    :cond_e
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    sget-object v2, Lcom/android/wifitrackerlib/WifiEntry;->WIFI_PICKER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 682
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "WifiPickerTracker"

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSlave() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSlave()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WifiPickerTracker"

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected WifiEntries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 687
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WifiPickerTracker"

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated WifiEntries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_f
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->notifyOnWifiEntriesChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 690
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
