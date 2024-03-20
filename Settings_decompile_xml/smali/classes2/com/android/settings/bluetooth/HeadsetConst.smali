.class public Lcom/android/settings/bluetooth/HeadsetConst;
.super Ljava/lang/Object;
.source "HeadsetConst.java"


# instance fields
.field public mNotPluginDeviceId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010402"

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010600"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010602"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010603"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010601"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010605"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010606"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010607"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010703"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010704"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010901"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01010902"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v1, "01011406"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p0, p0, Lcom/android/settings/bluetooth/HeadsetConst;->mNotPluginDeviceId:Ljava/util/List;

    const-string v0, "0201010001"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
