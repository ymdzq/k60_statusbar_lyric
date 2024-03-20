.class public Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;
.super Landroidx/preference/Preference;
.source "HandleFirmwareUpdatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$ServiceConnectionOTA;
    }
.end annotation


# instance fields
.field private isBindOTAService:Z

.field mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mOTAConnection:Landroid/content/ServiceConnection;

.field private mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

.field private mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field mShowingDialog:Z

.field mTextView:Landroid/widget/TextView;

.field private stateValue:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOTAService(Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;)Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmOTAService(Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    .line 47
    iput-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->isBindOTAService:Z

    .line 63
    iput-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 46
    iput-object p2, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    .line 47
    iput-object p2, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAConnection:Landroid/content/ServiceConnection;

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->isBindOTAService:Z

    .line 58
    iput-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 46
    iput-object p2, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    .line 47
    iput-object p2, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAConnection:Landroid/content/ServiceConnection;

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->isBindOTAService:Z

    .line 53
    iput-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initOTAService()V
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$ServiceConnectionOTA;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$ServiceConnectionOTA;-><init>(Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;)V

    iput-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAConnection:Landroid/content/ServiceConnection;

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->isBindOTAService:Z

    if-nez v0, :cond_1

    const-string v0, "initOTASource: bind OTAService"

    const-string v1, "HandleFirmwareUpdatePreference"

    .line 137
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.bluetooth.mible.MiuiBleOTAService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.bluetooth"

    .line 140
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAConnection:Landroid/content/ServiceConnection;

    const/4 v4, -0x1

    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->isBindOTAService:Z

    .line 142
    iget-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->setOnClick(Landroid/widget/Button;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOTASource: bind service error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setOnClick(Landroid/widget/Button;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "HandleFirmwareUpdatePreference"

    const-string/jumbo p1, "setOnClick: btnCancel"

    .line 162
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference$1;-><init>(Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method cleanOTAServiceIfNeeded()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->isBindOTAService:Z

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mOTAConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->isBindOTAService:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanOTASource: error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HandleFirmwareUpdatePreference"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method dismissDialogIfNeeded()V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mShowingDialog:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mShowingDialog:Z

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const-string v0, "HandleFirmwareUpdatePreference"

    const-string/jumbo v1, "onBindViewHolder: bindholder"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 70
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->textview_mihandle_update_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mTextView:Landroid/widget/TextView;

    .line 73
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->button_mihandle_update_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mButton:Landroid/widget/Button;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->initOTAService()V

    .line 75
    iget-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mButton:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->setOnClick(Landroid/widget/Button;)V

    .line 76
    iget p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->stateValue:I

    invoke-virtual {p0, p1}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->updateView(I)V

    return-void
.end method

.method sendRequstBroadcast(I)V
    .locals 2

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.ACTION_MIHANDLE_OTA_REQUEST"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "what"

    .line 105
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.miui.securitycenter"

    .line 106
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    invoke-direct {p1, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setFwStateValue(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->stateValue:I

    .line 81
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method showProgressDialog()V
    .locals 3

    .line 112
    :try_start_0
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 113
    iget-object v1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->camera_grip_firmware_update_ongoing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mShowingDialog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showProgressDialog: cancel exception cause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HandleFirmwareUpdatePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->sendRequstBroadcast(I)V

    :goto_0
    return-void
.end method

.method public updateView(I)V
    .locals 3

    const/16 v0, 0xc8

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 91
    iget-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->showProgressDialog()V

    goto :goto_1

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->dismissDialogIfNeeded()V

    .line 98
    iget-object p0, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mTextView:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->camera_grip_firmware_new_version:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->dismissDialogIfNeeded()V

    :goto_1
    return-void
.end method
