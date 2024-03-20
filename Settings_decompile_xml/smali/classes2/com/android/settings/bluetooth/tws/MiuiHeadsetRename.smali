.class public Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;
.super Ljava/lang/Object;
.source "MiuiHeadsetRename.java"


# instance fields
.field private mBluetoothHfp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/bluetooth/BluetoothHeadset;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceId:Ljava/lang/String;

.field private mHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mRenameText:Landroid/widget/TextView;

.field private mRenameView:Landroid/view/View;

.field private mRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mBluetoothHfp:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRootView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mService:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msyncAliasToCloud(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->syncAliasToCloud(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/os/Handler;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRootView:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mHandler:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mService:Ljava/lang/ref/WeakReference;

    .line 41
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mWorkHandler:Ljava/lang/ref/WeakReference;

    .line 42
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mBluetoothHfp:Ljava/lang/ref/WeakReference;

    .line 48
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 49
    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 57
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mDeviceId:Ljava/lang/String;

    .line 58
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    .line 59
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRootView:Ljava/lang/ref/WeakReference;

    .line 60
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mHandler:Ljava/lang/ref/WeakReference;

    .line 61
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mService:Ljava/lang/ref/WeakReference;

    .line 62
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mWorkHandler:Ljava/lang/ref/WeakReference;

    .line 63
    iput-object p7, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 64
    iput-object p9, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 65
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mBluetoothHfp:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private syncAliasToCloud(Ljava/lang/String;)Z
    .locals 6

    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v2, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->queryDeviceByMac(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    const-string v0, "MiuiHeadsetRename"

    if-nez p0, :cond_0

    const-string/jumbo p0, "syncAliasToCloud: contentValues is null"

    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v1, "name"

    .line 183
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo p0, "syncAliasToCloud: name is already same"

    .line 185
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 188
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->createAndUpdateData(Landroid/content/ContentValues;)V

    return v5

    :cond_2
    return v1
.end method


# virtual methods
.method public onBleChanged(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRenameView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 211
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRenameText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->first_text_color:I

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 212
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 215
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    iget-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRenameText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->second_text_color:I

    .line 217
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 216
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onHfpChanged(Z)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRenameView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 198
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 199
    iget-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRenameText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->first_text_color:I

    .line 200
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 199
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 202
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    iget-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRenameText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->second_text_color:I

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 203
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onHfpConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mBluetoothHfp:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRenameOnclick()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->renameLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRenameView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->rename:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRenameText:Landroid/widget/TextView;

    .line 91
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mRenameView:Landroid/view/View;

    new-instance v3, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;-><init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;Landroid/view/LayoutInflater;Lmiuix/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateService(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)V
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method
