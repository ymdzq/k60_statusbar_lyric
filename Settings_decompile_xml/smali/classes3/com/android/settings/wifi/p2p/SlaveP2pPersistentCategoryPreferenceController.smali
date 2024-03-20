.class public Lcom/android/settings/wifi/p2p/SlaveP2pPersistentCategoryPreferenceController;
.super Lcom/android/settings/wifi/p2p/SlaveP2pCategoryPreferenceController;
.source "SlaveP2pPersistentCategoryPreferenceController.java"


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
    const-string/jumbo p0, "slave_p2p_persistent_group"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
