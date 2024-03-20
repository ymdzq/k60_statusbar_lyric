.class public Lcom/android/settings/connecteddevice/usb/UsbBackend;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# instance fields
.field private final mFileTransferRestricted:Z

.field private final mFileTransferRestrictedBySystem:Z

.field private final mIsAdminUser:Z

.field private final mMidiSupported:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mTetheringRestricted:Z

.field private final mTetheringRestrictedBySystem:Z

.field private final mTetheringSupported:Z

.field private final mUVCEnabled:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "user"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;Landroid/os/UserManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 75
    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbFileTransferRestricted(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestricted:Z

    .line 76
    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbFileTransferRestrictedBySystem(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestrictedBySystem:Z

    .line 77
    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbTetheringRestricted(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestricted:Z

    .line 78
    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbTetheringRestrictedBySystem(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestrictedBySystem:Z

    .line 79
    invoke-static {}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUvcEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUVCEnabled:Z

    .line 80
    invoke-virtual {p2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mIsAdminUser:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.software.midi"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mMidiSupported:Z

    .line 83
    const-class p2, Landroid/net/TetheringManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    .line 84
    invoke-virtual {p1}, Landroid/net/TetheringManager;->isTetheringSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringSupported:Z

    .line 85
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    return-void
.end method

.method private areFunctionDisallowed(J)Z
    .locals 5

    .line 210
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestricted:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x4

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-wide/16 v3, 0x10

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestricted:Z

    if-eqz p0, :cond_2

    const-wide/16 v3, 0x20

    and-long p0, p1, v3

    cmp-long p0, p0, v1

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private areFunctionsDisallowedBySystem(J)Z
    .locals 5

    .line 216
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestrictedBySystem:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x4

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    const-wide/16 v3, 0x10

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestrictedBySystem:Z

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x20

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    :cond_1
    iget-boolean p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUVCEnabled:Z

    if-nez p0, :cond_3

    const-wide/16 v3, 0x80

    and-long p0, p1, v3

    cmp-long p0, p0, v1

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static dataRoleFromString(Ljava/lang/String;)I
    .locals 0

    .line 184
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static dataRoleToString(I)Ljava/lang/String;
    .locals 0

    .line 180
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isUsbFileTransferRestricted(Landroid/os/UserManager;)Z
    .locals 1

    const-string/jumbo v0, "no_usb_file_transfer"

    .line 188
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isUsbFileTransferRestrictedBySystem(Landroid/os/UserManager;)Z
    .locals 2

    .line 197
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v1, "no_usb_file_transfer"

    .line 196
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private static isUsbTetheringRestricted(Landroid/os/UserManager;)Z
    .locals 1

    const-string/jumbo v0, "no_config_tethering"

    .line 192
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isUsbTetheringRestrictedBySystem(Landroid/os/UserManager;)Z
    .locals 2

    .line 202
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v1, "no_config_tethering"

    .line 201
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private static isUvcEnabled()Z
    .locals 1

    .line 206
    invoke-static {}, Landroid/hardware/usb/UsbManager;->isUvcSupportEnabled()Z

    move-result v0

    return v0
.end method

.method private updatePorts()V
    .locals 5

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 229
    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 230
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 235
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbPort;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 238
    iput-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static usbFunctionsFromString(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x2

    .line 176
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static usbFunctionsToString(J)Ljava/lang/String;
    .locals 0

    .line 171
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public areAllRolesSupported()Z
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 163
    invoke-virtual {v0, v1, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v2, 0x1

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 165
    invoke-virtual {v0, v2, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 166
    invoke-virtual {p0, v2, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method areFunctionsDisallowedByNonAdminUser(J)Z
    .locals 2

    .line 224
    iget-boolean p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mIsAdminUser:Z

    if-nez p0, :cond_0

    const-wide/16 v0, 0x20

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public areFunctionsSupported(J)Z
    .locals 6

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mMidiSupported:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x8

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringSupported:Z

    if-nez v0, :cond_2

    const-wide/16 v4, 0x20

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 109
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionDisallowed(J)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsDisallowedBySystem(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsDisallowedByNonAdminUser(J)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getCurrentFunctions()J
    .locals 2

    .line 89
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataRole()I
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    .line 120
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getDefaultUsbFunctions()J
    .locals 2

    .line 97
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPowerRole()I
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    .line 115
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result p0

    :goto_0
    return p0
.end method

.method public setCurrentFunctions(J)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    return-void
.end method

.method public setDataRole(I)V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz p0, :cond_1

    .line 157
    invoke-virtual {p0, v0, p1}, Landroid/hardware/usb/UsbPort;->setRoles(II)V

    :cond_1
    return-void
.end method

.method public setDefaultUsbFunctions(J)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/UsbManager;->setScreenUnlockedFunctions(J)V

    return-void
.end method

.method public setPowerRole(I)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz p0, :cond_1

    .line 138
    invoke-virtual {p0, p1, v0}, Landroid/hardware/usb/UsbPort;->setRoles(II)V

    :cond_1
    return-void
.end method
