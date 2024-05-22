.class public abstract Lcom/android/systemui/statusbar/connectivity/EthernetIcons;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ETHERNET_ICONS:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x7f081824    # @drawable/stat_sys_ethernet 'res/drawable/stat_sys_ethernet.xml'

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x7f081825    # @drawable/stat_sys_ethernet_fully 'res/drawable/stat_sys_ethernet_fully.xml'

    .line 9
    filled-new-array {v1}, [I

    .line 12
    move-result-object v1

    .line 15
    filled-new-array {v0, v1}, [[I

    .line 16
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/systemui/statusbar/connectivity/EthernetIcons;->ETHERNET_ICONS:[[I

    .line 20
    return-void
    .line 22
.end method
