.class public Lcom/android/settings/MiuiDeviceNameEditFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiDeviceNameEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;
    }
.end annotation


# instance fields
.field private fragmentLabel:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceNameEdit:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceNameEdit(Lcom/android/settings/MiuiDeviceNameEditFragment;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->fragmentLabel:Ljava/lang/String;

    return-void
.end method

.method private isCustomized()Z
    .locals 1

    .line 287
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isCustomizedOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bluetooth_label"

    iget-object p0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->fragmentLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 193
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->device_edit_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isChanged()Z
    .locals 3

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->isCustomized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getBluetoothName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "p2p_label"

    .line 174
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->fragmentLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->getP2pDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "p2p1_label"

    .line 176
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->fragmentLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->getP2p1DeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ":settings:show_fragment_args"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->fragmentLabel:Ljava/lang/String;

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fragmentLabel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->fragmentLabel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiDeviceNameEditFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onDestroyView()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 58
    sget p0, Lcom/android/settings/R$layout;->device_name_edit_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onSave()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->isCustomized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBTUtils;->setBluetoothName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "p2p_label"

    .line 147
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->fragmentLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->setP2pDeviceName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "p2p1_label"

    .line 149
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->fragmentLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_p2p1_ssid_changed"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->setP2p1DeviceName(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/MiuiUtils;->setDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.action.edit_device_name"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->device_name_input_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onSave()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStart()V

    .line 66
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 73
    sget p2, Lcom/android/settings/R$id;->device_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    .line 76
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->isCustomized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getBluetoothName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "p2p_label"

    .line 78
    iget-object p2, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->fragmentLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->getP2pDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "p2p1_label"

    .line 80
    iget-object p2, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->fragmentLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->getP2p1DeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 85
    :goto_0
    iget-object p2, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 87
    iget-object p2, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 92
    :cond_3
    iget-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    new-instance p2, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;

    new-instance v0, Lcom/android/settings/MiuiDeviceNameEditFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDeviceNameEditFragment$1;-><init>(Lcom/android/settings/MiuiDeviceNameEditFragment;)V

    const/16 v1, 0x1f

    invoke-direct {p2, v1, v0}, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;-><init>(ILcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 120
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance p1, Lcom/android/settings/MiuiDeviceNameEditFragment$2;

    invoke-direct {p1, p0}, Lcom/android/settings/MiuiDeviceNameEditFragment$2;-><init>(Lcom/android/settings/MiuiDeviceNameEditFragment;)V

    iput-object p1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mRunnable:Ljava/lang/Runnable;

    .line 129
    iget-object p0, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
