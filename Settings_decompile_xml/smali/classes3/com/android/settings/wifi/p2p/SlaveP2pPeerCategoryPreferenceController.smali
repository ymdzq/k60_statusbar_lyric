.class public Lcom/android/settings/wifi/p2p/SlaveP2pPeerCategoryPreferenceController;
.super Lcom/android/settings/wifi/p2p/SlaveP2pCategoryPreferenceController;
.source "SlaveP2pPeerCategoryPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/SlaveP2pCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "slave_p2p_peer_devices"

    return-object p0
.end method
