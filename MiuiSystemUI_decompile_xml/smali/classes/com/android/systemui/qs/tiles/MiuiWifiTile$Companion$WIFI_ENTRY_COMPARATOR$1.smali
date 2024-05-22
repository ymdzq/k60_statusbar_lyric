.class public final Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

.field public static final INSTANCE$1:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

.field public static final INSTANCE$2:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

.field public static final INSTANCE$3:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;-><init>(I)V

    .line 5
    sput-object v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->INSTANCE:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 8
    new-instance v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;-><init>(I)V

    .line 13
    sput-object v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->INSTANCE$1:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 16
    new-instance v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 18
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;-><init>(I)V

    .line 21
    sput-object v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->INSTANCE$2:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 24
    new-instance v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 26
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;-><init>(I)V

    .line 29
    sput-object v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->INSTANCE$3:Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;

    .line 32
    return-void
    .line 34
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;
    .locals 1

    iget p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->$r8$classId:I

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 2
    :goto_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 4
    iget p0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    neg-int p0, p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_1
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->apply(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_2
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$Companion$WIFI_ENTRY_COMPARATOR$1;->apply(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 8
    :goto_0
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 9
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
