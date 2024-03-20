.class public Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothOppHighSpeedPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$WorkHandler;,
        Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$BluetoothReceiver;
    }
.end annotation


# instance fields
.field private final MSG_START_BLUETOOTH_ON:I

.field private final TAG:Ljava/lang/String;

.field private bluetoothFilter:Landroid/content/IntentFilter;

.field private isChanged:Z

.field private mClicked:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field protected mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mValue:Ljava/lang/Object;

.field private myPreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetisChanged(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->isChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClicked(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mClicked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiver(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmyPreference(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->myPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisChanged(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->isChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClicked(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartBluetoothAdapter(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->restartBluetoothAdapter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBluetoothAdapter(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->setBluetoothAdapter(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "BluetoothOppHighSpeedPreferenceController"

    .line 33
    iput-object v0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->myPreference:Landroidx/preference/Preference;

    .line 35
    iput-object v0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mValue:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 37
    iput v1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->MSG_START_BLUETOOTH_ON:I

    .line 38
    iput-object v0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    iput-object v0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->isChanged:Z

    .line 49
    iput-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    .line 50
    new-instance p1, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$WorkHandler;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$WorkHandler;-><init>(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance p1, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$BluetoothReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$BluetoothReceiver;-><init>(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->bluetoothFilter:Landroid/content/IntentFilter;

    const-string p0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 53
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private createDialogForRestartBluetooth()V
    .locals 4

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mClicked:Z

    .line 145
    iget-object v0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 146
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->bluetooth_enable_opp_high_speed_dialog_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 148
    iget-object v2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->bluetooth_enable_opp_high_speed_dialog_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 150
    iget-object v2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->bluetooth_enable_opp_high_speed_dialog_positive:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$1;-><init>(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 162
    iget-object v2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->bluetooth_enable_opp_high_speed_dialog_negative:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$2;-><init>(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 169
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 170
    new-instance v2, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$3;-><init>(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 177
    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private restartBluetoothAdapter()V
    .locals 5

    const-string v0, "BluetoothOppHighSpeedPreferenceController"

    :try_start_0
    const-string/jumbo v1, "restart BluetoothAdapter "

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->isChanged:Z

    .line 82
    iget-object v2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->bluetoothFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, v2}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->setBluetoothAdapter(Z)V

    .line 84
    iget-object v3, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->myPreference:Landroidx/preference/Preference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 85
    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setBluetoothAdapter(Z)V
    .locals 2

    const-string p0, "BluetoothOppHighSpeedPreferenceController"

    .line 111
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 118
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothAdapter status: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "bluetooth_enable_opp_high_speed"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    const-string/jumbo v0, "opp_high_speed_enable_cloud"

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "opp_high_speed_enable_empty_cloud"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v3, :cond_1

    :cond_0
    return v3

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 0

    .line 206
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 127
    iput-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->myPreference:Landroidx/preference/Preference;

    .line 128
    iput-object p2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mValue:Ljava/lang/Object;

    .line 129
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->createDialogForRestartBluetooth()V

    return p2

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "bluetooth_enable_opp_high_speed_preference"

    if-eqz p1, :cond_1

    .line 136
    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 138
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return p2
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 200
    iget-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_enable_opp_high_speed_preference"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 201
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
