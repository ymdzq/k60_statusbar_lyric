.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final slotByName:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const v0, 0x1040965    # @android:string/wfcSpnFormat_spn_wifi

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    const v1, 0x1040977    # @android:string/whichEditApplicationLabel

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    const v2, 0x1040987    # @android:string/whichSendToApplication

    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    const v3, 0x1040970    # @android:string/wfc_mode_cellular_preferred_summary

    .line 26
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;->AIRPLANE:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;

    .line 33
    new-instance v4, Lkotlin/Pair;

    .line 35
    invoke-direct {v4, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;->MOBILE:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;

    .line 40
    new-instance v3, Lkotlin/Pair;

    .line 42
    invoke-direct {v3, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;->WIFI:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;

    .line 47
    new-instance v1, Lkotlin/Pair;

    .line 49
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;->ETHERNET:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;

    .line 54
    new-instance v2, Lkotlin/Pair;

    .line 56
    invoke-direct {v2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    filled-new-array {v4, v3, v1, v2}, [Lkotlin/Pair;

    .line 61
    move-result-object p1

    .line 64
    invoke-static {p1}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 65
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;->slotByName:Ljava/util/Map;

    .line 69
    return-void
    .line 71
.end method
