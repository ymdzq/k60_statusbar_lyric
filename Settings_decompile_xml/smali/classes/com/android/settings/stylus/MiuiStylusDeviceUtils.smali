.class public Lcom/android/settings/stylus/MiuiStylusDeviceUtils;
.super Ljava/lang/Object;
.source "MiuiStylusDeviceUtils.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;",
            ">;"
        }
    .end annotation
.end field

.field public mStylusConn:Z

.field private mStylusDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusConn:Z

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    const-string v0, "input"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mInputManager:Landroid/hardware/input/InputManager;

    .line 23
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->updateConnStatus()V

    return-void
.end method

.method public static supportStylus()Z
    .locals 2

    const-string/jumbo v0, "support_stylus_gesture"

    const/4 v1, 0x0

    .line 133
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private updateConnStatus()V
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 114
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, v0, v2

    .line 115
    iget-object v5, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v6, 0x1915

    .line 116
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVendorId()I

    move-result v7

    if-ne v6, v7, :cond_0

    const v6, 0xeaea

    .line 117
    invoke-virtual {v5}, Landroid/view/InputDevice;->getProductId()I

    move-result v5

    if-ne v6, v5, :cond_0

    .line 118
    iget-object v5, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    iget-object v5, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v4, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 121
    sget-object v3, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->TAG:Ljava/lang/String;

    const-string v4, "UpdateConnStatus stylus added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusConn:Z

    if-eq v3, v0, :cond_2

    .line 128
    iput-boolean v3, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusConn:Z

    :cond_2
    return-void
.end method

.method private updateListen(ZI)V
    .locals 4

    .line 50
    invoke-static {p2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0x1915

    .line 51
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const v1, 0xeaea

    .line 52
    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 53
    sget-object v1, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isAdded : true"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "First stylus add, isAdded : true"

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-boolean v2, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusConn:Z

    .line 59
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;

    .line 60
    invoke-interface {v1, v2}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;->onStylusUpdate(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 66
    sget-object p1, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isAdded : false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 71
    :cond_1
    iget-object p2, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusDeviceList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "All stylus remove, isAdded : false"

    .line 72
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusConn:Z

    .line 74
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;

    .line 75
    invoke-interface {p2, p1}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;->onStylusUpdate(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public isStylusConn()Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mStylusConn:Z

    return p0
.end method

.method public onInputDeviceAdded(I)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->updateListen(ZI)V

    :cond_0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, p1}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->updateListen(ZI)V

    :cond_0
    return-void
.end method

.method public register(Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;)V
    .locals 2

    .line 106
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "register stylus change listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->registerStylusChangeLister(Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;)V

    return-void
.end method

.method public registerStylusChangeLister(Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public unRegister(Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;)V
    .locals 2

    .line 100
    sget-object v0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregister stylus change listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->unRegisterStylusChangeLister(Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;)V

    return-void
.end method

.method public unRegisterStylusChangeLister(Lcom/android/settings/stylus/MiuiStylusDeviceUtils$UpdateStylusListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusDeviceUtils;->mListenerList:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method
